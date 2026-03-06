# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "httpx[http2]",
#     "msgspec",
# ]
# ///

import asyncio
import json
import os
import subprocess
import sys
import zipfile
from pathlib import Path
from typing import Any

import httpx
import msgspec

# Modrinth API Constants
MODRINTH_API = "https://api.modrinth.com/v2"
USER_AGENT = "nixos-minecraft-mrpack-to-nix/6.0.0"

# -- Data Models --

class ModHash(msgspec.Struct):
    sha512: str

class ModFile(msgspec.Struct):
    path: str
    hashes: ModHash
    downloads: list[str]

class Index(msgspec.Struct):
    files: list[ModFile]

class VersionInfo(msgspec.Struct):
    project_id: str

class ProjectInfo(msgspec.Struct):
    id: str
    server_side: str  # "required", "optional", "unsupported"

# -- API Client --

class ModrinthClient:
    def __init__(self):
        self.client = httpx.AsyncClient(
            headers={"User-Agent": USER_AGENT},
            timeout=30.0,
            http2=True,
            limits=httpx.Limits(max_connections=20)
        )

    async def __aenter__(self):
        return self

    async def __aexit__(self, exc_type, exc_val, exc_tb):
        await self.client.aclose()

    async def fetch_versions(self, hashes: list[str]) -> dict[str, VersionInfo]:
        """Fetch version info for a batch of hashes."""
        resp = await self.client.post(
            f"{MODRINTH_API}/version_files",
            json={"hashes": hashes, "algorithm": "sha512"}
        )
        resp.raise_for_status()
        return msgspec.json.decode(resp.content, type=dict[str, VersionInfo])

    async def fetch_projects(self, project_ids: list[str]) -> list[ProjectInfo]:
        """Fetch project info for a batch of IDs."""
        ids_param = msgspec.json.encode(project_ids).decode()
        resp = await self.client.get(f"{MODRINTH_API}/projects", params={"ids": ids_param})
        resp.raise_for_status()
        return msgspec.json.decode(resp.content, type=list[ProjectInfo])

async def get_all_metadata(hashes: list[str]):
    """Parallelized metadata fetching."""
    async with ModrinthClient() as api:
        # 1. Fetch versions in parallel batches
        print(f"Fetching version info for {len(hashes)} files...", file=sys.stderr)
        version_tasks = [
            api.fetch_versions(hashes[i : i + 100])
            for i in range(0, len(hashes), 100)
        ]
        version_results = await asyncio.gather(*version_tasks)
        versions = {k: v for res in version_results for k, v in res.items()}

        # 2. Fetch projects in parallel batches
        project_ids = list(set(v.project_id for v in versions.values()))
        print(f"Fetching project info for {len(project_ids)} projects...", file=sys.stderr)
        project_tasks = [
            api.fetch_projects(project_ids[i : i + 100])
            for i in range(0, len(project_ids), 100)
        ]
        project_results = await asyncio.gather(*project_tasks)
        projects = {p.id: p for res in project_results for p in res}

        return versions, projects

# -- Processing --

def sanitize_name(name: str) -> str:
    return name.replace(" ", "-").replace("'", "-")

def generate_nix(mods: list[dict], local_dps: list[str], index_dps: list[dict]) -> str:
    """Generate the Nix configuration string."""
    
    def to_nix_fetch(m):
        name = json.dumps(m["name"])
        url = json.dumps(m["url"])
        sha = json.dumps(m["sha512"])
        return f"    (pkgs.fetchurl {{ name = {name}; url = {url}; sha512 = {sha}; }})"

    def to_nix_local(dp):
        name = json.dumps(dp)
        return f'    (pkgs.runCommand {name} {{}} "cp ${{./datapacks/{dp}}} $out")'

    mods_entries = "\n".join(to_nix_fetch(m) for m in mods)
    local_dp_entries = "\n".join(to_nix_local(dp) for dp in sorted(local_dps))
    index_dp_entries = "\n".join(to_nix_fetch(dp) for dp in index_dps)

    return f"""{{
  pkgs,
  lib,
  config,
  ...
}}: let
  mods = [
{mods_entries}
  ];
  datapacks = [
{local_dp_entries}
{index_dp_entries}
  ];
in {{
  options.minecraftMods = {{
    modsDrv = lib.mkOption {{type = lib.types.package;}};
    datapacks = lib.mkOption {{type = lib.types.package;}};
  }};
  config.minecraftMods = {{
    modsDrv = pkgs.linkFarmFromDrvs "mods" mods;
    datapacks = pkgs.linkFarmFromDrvs "datapacks" datapacks;
  }};
}}
"""

async def run():
    mrpack_path = Path(sys.argv[1] if len(sys.argv) > 1 else "server.mrpack")
    dry_run = os.environ.get("DRY_RUN") == "true"
    output_file = Path("mods.nix")
    datapacks_dir = Path("datapacks")

    if not mrpack_path.exists():
        print(f"Error: {mrpack_path} not found.", file=sys.stderr)
        sys.exit(1)

    print(f"--- Processing {mrpack_path} ---", file=sys.stderr)

    active_local_datapacks = set()
    with zipfile.ZipFile(mrpack_path, "r") as pack:
        index = msgspec.json.decode(pack.read("modrinth.index.json"), type=Index)
        
        # Datapack extraction
        for name in pack.namelist():
            if name.startswith("overrides/datapacks/") and name.endswith(".zip"):
                dest_name = sanitize_name(Path(name).name)
                active_local_datapacks.add(dest_name)
                if not dry_run:
                    datapacks_dir.mkdir(exist_ok=True)
                    (datapacks_dir / dest_name).write_bytes(pack.read(name))

    # Cleanup
    if not dry_run and datapacks_dir.exists():
        for existing in datapacks_dir.glob("*.zip"):
            if existing.name not in active_local_datapacks:
                print(f"Cleaning up unused datapack: {existing.name}", file=sys.stderr)
                existing.unlink()

    # Metadata & Filtering
    mod_files = [f for f in index.files if f.path.startswith("mods/")]
    hashes = [f.hashes.sha512 for f in mod_files]
    versions, projects = await get_all_metadata(hashes)

    final_mods = []
    skipped = []
    for f in mod_files:
        sha = f.hashes.sha512
        vinfo = versions.get(sha)
        pinfo = projects.get(vinfo.project_id) if vinfo else None
        
        server_side = pinfo.server_side if pinfo else "unknown"
        filename = sanitize_name(Path(f.path).name)
        
        if server_side == "unsupported":
            skipped.append(filename)
        else:
            final_mods.append({"name": filename, "url": f.downloads[0], "sha512": sha})

    index_dps = [
        {"name": sanitize_name(Path(f.path).name), "url": f.downloads[0], "sha512": f.hashes.sha512}
        for f in index.files if f.path.startswith("datapacks/")
    ]

    # Output Generation
    print("Generating and formatting Nix...", file=sys.stderr)
    raw_nix = generate_nix(final_mods, list(active_local_datapacks), index_dps)
    
    process = subprocess.run(["alejandra", "--quiet", "-"], input=raw_nix, text=True, capture_output=True, check=True)
    formatted_nix = process.stdout

    if dry_run:
        print(formatted_nix)
    else:
        output_file.write_text(formatted_nix)
        print(f"Wrote {output_file}", file=sys.stderr)

    # Summary
    print(f"\nSummary:\n  Server Mods: {len(final_mods)}\n  Datapacks:   {len(active_local_datapacks) + len(index_dps)}", file=sys.stderr)
    if skipped:
        print("\nSkipped (Client-only):", file=sys.stderr)
        subprocess.run(["column"], input="\n".join(sorted(skipped)), text=True)

if __name__ == "__main__":
    asyncio.run(run())
