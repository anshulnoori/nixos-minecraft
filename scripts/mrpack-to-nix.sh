#!/usr/bin/env bash
set -euo pipefail

# ── Argument parsing ──────────────────────────────────────────────────────────

DRY_RUN=false
MRPACK_PATH=""

for arg in "$@"; do
  case "$arg" in
  --dry-run) DRY_RUN=true ;;
  --help | -h)
    sed -n '2,/^$/p' "$0" | grep '^#' | sed 's/^# \?//'
    exit 0
    ;;
  -*)
    echo "Unknown flag: $arg" >&2
    exit 1
    ;;
  *)
    if [[ -n "$MRPACK_PATH" ]]; then
      echo "Error: unexpected argument '$arg'" >&2
      exit 1
    fi
    MRPACK_PATH="$arg"
    ;;
  esac
done

MRPACK_PATH="${MRPACK_PATH:-server.mrpack}"
MRPACK_PATH="$(realpath "$MRPACK_PATH")"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUTPUT_FILE="$REPO_ROOT/mods.nix"
DATAPACKS_DIR="$REPO_ROOT/datapacks"

# ── Validation ────────────────────────────────────────────────────────────────

if [[ ! -f "$MRPACK_PATH" ]]; then
  echo "Error: .mrpack file not found: $MRPACK_PATH" >&2
  echo "Usage: bash scripts/mrpack-to-nix.sh [--dry-run] [server.mrpack]" >&2
  exit 1
fi

for cmd in jq unzip; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "Error: '$cmd' is required but not found. Run 'nix develop' first." >&2
    exit 1
  fi
done

# ── Extract .mrpack ───────────────────────────────────────────────────────────

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

echo "Extracting $MRPACK_PATH ..." >&2
unzip -q "$MRPACK_PATH" -d "$TMPDIR"

INDEX_FILE="$TMPDIR/modrinth.index.json"
if [[ ! -f "$INDEX_FILE" ]]; then
  echo "Error: modrinth.index.json not found inside $MRPACK_PATH" >&2
  exit 1
fi

# ── Read metadata ─────────────────────────────────────────────────────────────

PACK_NAME="$(jq -r '.name // "Unknown Pack"' "$INDEX_FILE")"
PACK_VERSION="$(jq -r '.versionId // "unknown"' "$INDEX_FILE")"
MC_VERSION="$(jq -r '.dependencies.minecraft // "unknown"' "$INDEX_FILE")"
FABRIC_VERSION="$(jq -r '.dependencies["fabric-loader"] // "unknown"' "$INDEX_FILE")"

echo "Pack: $PACK_NAME v$PACK_VERSION (MC $MC_VERSION, Fabric $FABRIC_VERSION)" >&2

# ── Process Modrinth-hosted mods ─────────────────────────────────────────────

MODS_JSON="$(jq -c '
  [ .files[]
    | select(
        (.path | startswith("mods/")) and
        (.env.server // "required") != "unsupported"
      )
    | {
        name: (.path | split("/") | last),
        url:  .downloads[0],
        sha512: .hashes.sha512
      }
  ]
' "$INDEX_FILE")"

MOD_COUNT="$(echo "$MODS_JSON" | jq 'length')"

INDEX_DATAPACKS_JSON="$(jq -c '
  [ .files[]
    | select(.path | startswith("datapacks/"))
    | {
        name: (.path | split("/") | last),
        url:  .downloads[0],
        sha512: .hashes.sha512
      }
  ]
' "$INDEX_FILE")"

INDEX_DATAPACK_COUNT="$(echo "$INDEX_DATAPACKS_JSON" | jq 'length')"

SKIPPED_COUNT="$(jq -r '[ .files[] | select((.path | startswith("mods/")) and (.env.server == "unsupported")) ] | length' "$INDEX_FILE")"

echo "  Server-side mods (Modrinth CDN): $MOD_COUNT" >&2
if [[ "$SKIPPED_COUNT" -gt 0 ]]; then
  SKIPPED_NAMES="$(jq -r '[ .files[] | select((.path | startswith("mods/")) and (.env.server == "unsupported")) | (.path | split("/") | last) ] | join(", ")' "$INDEX_FILE")"
  echo "  Skipped (client-only): $SKIPPED_COUNT — $SKIPPED_NAMES" >&2
fi

# ── Process local override datapacks ─────────────────────────────────────────

OVERRIDE_DATAPACKS_DIR="$TMPDIR/overrides/datapacks"
LOCAL_DATAPACK_NAMES=()
TOTAL_DATAPACK_COUNT=0

if [[ -d "$OVERRIDE_DATAPACKS_DIR" ]]; then
  mkdir -p "$DATAPACKS_DIR"

  sanitize_fname() {
    echo "$1" | tr ' ' '-' | tr "'" '-'
  }

  if [[ "$DRY_RUN" == "false" ]]; then
    EXPECTED_FNAMES=""
    for dp in "$OVERRIDE_DATAPACKS_DIR"/*; do
      [[ -f "$dp" ]] || continue
      safe_fname="$(sanitize_fname "$(basename "$dp")")"
      EXPECTED_FNAMES="$EXPECTED_FNAMES $safe_fname "
    done

    for existing in "$DATAPACKS_DIR"/*; do
      [[ -f "$existing" ]] || continue
      safe_existing="$(basename "$existing")"
      if [[ "$EXPECTED_FNAMES" != *" $safe_existing "* ]]; then
        echo "  Removing stale datapack: $safe_existing" >&2
        rm -f "$existing"
      fi
    done

    for dp in "$OVERRIDE_DATAPACKS_DIR"/*; do
      [[ -f "$dp" ]] || continue
      orig_fname="$(basename "$dp")"
      safe_fname="$(sanitize_fname "$orig_fname")"
      cp -f "$dp" "$DATAPACKS_DIR/$safe_fname"
      LOCAL_DATAPACK_NAMES+=("$safe_fname")
      if [[ "$orig_fname" != "$safe_fname" ]]; then
        echo "  Datapack: $orig_fname → $safe_fname" >&2
      else
        echo "  Datapack: $safe_fname" >&2
      fi
    done
  else
    for dp in "$OVERRIDE_DATAPACKS_DIR"/*; do
      [[ -f "$dp" ]] || continue
      LOCAL_DATAPACK_NAMES+=("$(sanitize_fname "$(basename "$dp")")")
    done
  fi

  TOTAL_DATAPACK_COUNT=$((${#LOCAL_DATAPACK_NAMES[@]} + INDEX_DATAPACK_COUNT))
  echo "  Local override datapacks: ${#LOCAL_DATAPACK_NAMES[@]}" >&2
  [[ "$INDEX_DATAPACK_COUNT" -gt 0 ]] && echo "  Modrinth-CDN datapacks: $INDEX_DATAPACK_COUNT" >&2
fi

echo "" >&2

# ── Generate Nix entries ──────────────────────────────────────────────────────

emit_fetchurl() {
  local entry="$1"
  local name url sha512 safe_name
  name="$(echo "$entry" | jq -r '.name')"
  url="$(echo "$entry" | jq -r '.url')"
  sha512="$(echo "$entry" | jq -r '.sha512')"
  safe_name="${name// /-}"
  printf '    (pkgs.fetchurl {\n'
  printf '      name   = "%s";\n' "$safe_name"
  printf '      url    = "%s";\n' "$url"
  printf '      sha512 = "%s";\n' "$sha512"
  printf '    })\n'
}

MODS_BLOCK=""
while IFS= read -r entry; do
  MODS_BLOCK+="$(emit_fetchurl "$entry")"$'\n'
done < <(echo "$MODS_JSON" | jq -c '.[]')

DATAPACKS_BLOCK=""

# Fix: Local override datapacks wrapped in runCommand so they become valid derivations
for fname in "${LOCAL_DATAPACK_NAMES[@]}"; do
  DATAPACKS_BLOCK+="    (pkgs.runCommand \"${fname}\" {} ''cp \${./datapacks/${fname}} \$out'')"$'\n'
done

while IFS= read -r entry; do
  DATAPACKS_BLOCK+="$(emit_fetchurl "$entry")"$'\n'
done < <(echo "$INDEX_DATAPACKS_JSON" | jq -c '.[]')

# ── Assemble mods.nix ─────────────────────────────────────────────────────────

TIMESTAMP="$(date -u '+%Y-%m-%dT%H:%M:%SZ')"

NIX_CONTENT="# Auto-generated by scripts/mrpack-to-nix.sh — do not edit manually.
# Source:    $PACK_NAME v$PACK_VERSION
# Minecraft: $MC_VERSION
# Fabric:    $FABRIC_VERSION
# Generated: $TIMESTAMP

{ pkgs, lib, config, ... }:

let
  mods = [
${MODS_BLOCK}  ];

  datapacks = [
${DATAPACKS_BLOCK}  ];

in {
  options.minecraftMods = {
    modsDrv = lib.mkOption {
      type        = lib.types.package;
      description = \"Link farm of all server-side mod JARs.\";
    };
    datapacks = lib.mkOption {
      type        = lib.types.package;
      description = \"Link farm of all datapack JARs/zips.\";
    };
  };

  config.minecraftMods = {
    modsDrv   = pkgs.linkFarmFromDrvs \"mods\"      mods;
    datapacks = pkgs.linkFarmFromDrvs \"datapacks\" datapacks;
  };
}
"

# ── Output ────────────────────────────────────────────────────────────────────

if [[ "$DRY_RUN" == "true" ]]; then
  echo "$NIX_CONTENT"
else
  echo "$NIX_CONTENT" >"$OUTPUT_FILE"
  echo "Written to $OUTPUT_FILE" >&2
fi
