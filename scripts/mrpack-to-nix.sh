#!/usr/bin/env bash
set -euo pipefail

DRY_RUN=false
MRPACK_PATH=""

for arg in "$@"; do
  case "$arg" in
  --dry-run) DRY_RUN=true ;;
  --help | -h)
    printf "Usage: %s [--dry-run] [server.mrpack]\n" "$0"
    exit 0
    ;;
  -*) exit 1 ;;
  *) MRPACK_PATH="$arg" ;;
  esac
done

MRPACK_PATH="${MRPACK_PATH:-server.mrpack}"
MRPACK_PATH="$(realpath "$MRPACK_PATH")"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_FILE="$REPO_ROOT/mods.nix"
DATAPACKS_DIR="$REPO_ROOT/datapacks"

if [[ ! -f "$MRPACK_PATH" ]]; then
  printf "Error: %s not found\n" "$MRPACK_PATH" >&2
  exit 1
fi

for cmd in jq unzip curl column alejandra; do
  if ! command -v "$cmd" &>/dev/null; then
    printf "Error: %s is required\n" "$cmd" >&2
    exit 1
  fi
done

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

unzip -q "$MRPACK_PATH" -d "$TMPDIR"
INDEX_FILE="$TMPDIR/modrinth.index.json"

PACK_NAME="$(jq -r '.name // "Unknown"' "$INDEX_FILE")"
PACK_VERSION="$(jq -r '.versionId // "unknown"' "$INDEX_FILE")"
MC_VERSION="$(jq -r '.dependencies.minecraft // "unknown"' "$INDEX_FILE")"
FABRIC_VERSION="$(jq -r '.dependencies["fabric-loader"] // "unknown"' "$INDEX_FILE")"

printf "Pack: %s v%s (MC %s, Fabric %s)\n" "$PACK_NAME" "$PACK_VERSION" "$MC_VERSION" "$FABRIC_VERSION" >&2

USER_AGENT="nixos-minecraft-mrpack-to-nix/1.0.0"
ALL_MODS_JSON="$(jq -c '[ .files[] | select(.path | startswith("mods/")) ]' "$INDEX_FILE")"
HASHES_JSON="$(echo "$ALL_MODS_JSON" | jq -c '[ .[].hashes.sha512 ]')"

printf "API: Fetching metadata... " >&2
VERSION_INFO="$(curl -s -f -A "$USER_AGENT" -X POST "https://api.modrinth.com/v2/version_files" \
  -H "Content-Type: application/json" -d "{\"hashes\": $HASHES_JSON, \"algorithm\": \"sha512\"}")"

PROJECT_IDS="$(echo "$VERSION_INFO" | jq -c '[ .[] | .project_id ] | unique')"
ENCODED_IDS="$(echo "$PROJECT_IDS" | jq -sRr @uri | tr -d '\n')"
PROJECTS_INFO="$(curl -s -f -A "$USER_AGENT" -X GET "https://api.modrinth.com/v2/projects?ids=$ENCODED_IDS")"
printf "Done\n" >&2

SS_MAP="$TMPDIR/ss.json"
H2P_MAP="$TMPDIR/h2p.json"
echo "$PROJECTS_INFO" | jq -c '[ .[] | {key: .id, value: .server_side} ] | from_entries' > "$SS_MAP"
echo "$VERSION_INFO" | jq -c 'map_values(.project_id)' > "$H2P_MAP"

PROCESSED="$(echo "$ALL_MODS_JSON" | jq -c --slurpfile ss "$SS_MAP" --slurpfile h2p "$H2P_MAP" '
  [ .[] | .hash = .hashes.sha512 | .pid = $h2p[0][.hash] | .ss = $ss[0][.pid] ]')"

MODS="$(echo "$PROCESSED" | jq -c '[ .[] | select(.ss != "unsupported") | {name: (.path | split("/") | last), url: .downloads[0], sha512: .hash} ]')"
SKIPPED="$(echo "$PROCESSED" | jq -r '.[] | select(.ss == "unsupported") | (.path | split("/") | last)')"

INDEX_DPS="$(jq -c '[ .files[] | select(.path | startswith("datapacks/")) | {name: (.path | split("/") | last), url: .downloads[0], sha512: .hashes.sha512} ]' "$INDEX_FILE")"

OVERRIDE_DPS_DIR="$TMPDIR/overrides/datapacks"
LOCAL_DPS=()
if [[ -d "$OVERRIDE_DPS_DIR" ]]; then
  mkdir -p "$DATAPACKS_DIR"
  for dp in "$OVERRIDE_DPS_DIR"/*; do
    [[ -f "$dp" ]] || continue
    FNAME="$(basename "$dp" | tr ' ' '-' | tr "'" '-')"
    [[ "$DRY_RUN" == "false" ]] && cp -f "$dp" "$DATAPACKS_DIR/$FNAME"
    LOCAL_DPS+=("$FNAME")
  done
fi

printf "\nSummary:\n" >&2
printf "  Server Mods: %d\n" "$(echo "$MODS" | jq 'length')" >&2
printf "  Datapacks:   %d\n" "$((${#LOCAL_DPS[@]} + $(echo "$INDEX_DPS" | jq 'length')))" >&2

if [[ -n "$SKIPPED" ]]; then
  printf "\nSkipped (Client-only):\n" >&2
  echo "$SKIPPED" | column | sed 's/^/  /' >&2
fi

MODS_BLOCK=""
while IFS= read -r entry; do
  NAME="$(echo "$entry" | jq -r '.name' | tr ' ' '-')"
  URL="$(echo "$entry" | jq -r '.url')"
  SHA="$(echo "$entry" | jq -r '.sha512')"
  MODS_BLOCK+="$(printf '    (pkgs.fetchurl { name = "%s"; url = "%s"; sha512 = "%s"; })\n' "$NAME" "$URL" "$SHA")"
done < <(echo "$MODS" | jq -c '.[]')

DPS_BLOCK=""
for f in "${LOCAL_DPS[@]}"; do
  DPS_BLOCK+="$(printf '    (pkgs.runCommand "%s" {} "cp ${./datapacks/%s} $out")\n' "$f" "$f")"
done
while IFS= read -r entry; do
  NAME="$(echo "$entry" | jq -r '.name' | tr ' ' '-')"
  URL="$(echo "$entry" | jq -r '.url')"
  SHA="$(echo "$entry" | jq -r '.sha512')"
  DPS_BLOCK+="$(printf '    (pkgs.fetchurl { name = "%s"; url = "%s"; sha512 = "%s"; })\n' "$NAME" "$URL" "$SHA")"
done < <(echo "$INDEX_DPS" | jq -c '.[]')

RAW_NIX="$(printf "{ pkgs, lib, config, ... }:\nlet\n  mods = [\n%b  ];\n  datapacks = [\n%b  ];\nin {\n  options.minecraftMods = {\n    modsDrv = lib.mkOption { type = lib.types.package; };\n    datapacks = lib.mkOption { type = lib.types.package; };\n  };\n  config.minecraftMods = {\n    modsDrv = pkgs.linkFarmFromDrvs \"mods\" mods;\n    datapacks = pkgs.linkFarmFromDrvs \"datapacks\" datapacks;\n  };\n}" "$MODS_BLOCK" "$DPS_BLOCK")"

printf "\nFormatting... " >&2
FORMATTED_NIX="$(echo "$RAW_NIX" | alejandra --quiet -)"
printf "Done\n" >&2

if [[ "$DRY_RUN" == "true" ]]; then
  printf "\nResult:\n%s\n" "$FORMATTED_NIX"
else
  printf "%s\n" "$FORMATTED_NIX" > "$OUTPUT_FILE"
  printf "\nOutput: %s\n" "$OUTPUT_FILE" >&2
fi
