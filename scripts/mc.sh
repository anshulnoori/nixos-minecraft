#!/usr/bin/env bash

SERVER_DIR="/srv/minecraft/neoforge"
FLAKE_DIR="/etc/nixos"

info() { echo -e "\e[34m[MC INFO]\e[0m $1"; }
error() { echo -e "\e[31m[MC ERROR]\e[0m $1"; }

show_help() {
  echo "Minecraft Server Management Tool (Flake Edition)"
  echo ""
  echo "Usage: mc [command]"
  echo ""
  echo "Basic Commands:"
  echo "  start, stop, restart, status"
  echo ""
  echo "Console & Logs:"
  echo "  c, console  Attach to tmux console (Ctrl+B, D to detach)"
  echo "  log         Follow system logs (won't close on crash)"
  echo ""
  echo "NixOS & Repair:"
  echo "  apply       Run nixos-rebuild switch --flake"
  echo "  safe        Run a one-time Safe Mode boot to repair registries"
  echo "  clean       Remove session.lock and stale sockets"
  echo ""
  echo "  help        Show this menu"
  echo ""
}

case "$1" in
start | stop | restart | status)
  info "Executing systemctl $1..."
  sudo systemctl "$1" minecraft-server-neoforge
  ;;

c | console)
  info "Attaching to console..."
  sudo -u minecraft tmux -S /run/minecraft/neoforge.sock attach
  ;;

log)
  info "Following logs..."
  sudo journalctl -u minecraft-server-neoforge -f
  ;;

apply)
  info "Applying Flake configuration from $FLAKE_DIR..."
  sudo nixos-rebuild switch --flake "$FLAKE_DIR#minecraft"
  ;;

safe)
  info "Locating Nix Java and attempting Safe Mode repair..."
  sudo systemctl stop minecraft-server-neoforge
  JAVA_EXEC=$(systemctl show minecraft-server-neoforge.service -p ExecStart --value | sed 's/.*path=\([^ ;]*\).*/\1/')

  if [ ! -f "$JAVA_EXEC" ]; then
    error "Could not locate Java binary. Try running 'mc apply' first."
    exit 1
  fi

  sudo -u minecraft "$JAVA_EXEC" -jar "$SERVER_DIR/server-intermediary.jar" --safeMode
  ;;

clean)
  info "Cleaning stale locks and sockets..."
  sudo rm -f "$SERVER_DIR/world/session.lock"
  sudo rm -f "/run/minecraft/neoforge.sock"
  info "Cleanup complete."
  ;;

help | --help | -h)
  show_help
  ;;

*)
  error "Unknown command: '$1'"
  show_help
  exit 1
  ;;
esac
