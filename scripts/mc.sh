#!/usr/bin/env bash

info() { echo -e "\e[34m[MC INFO]\e[0m $1"; }
error() { echo -e "\e[31m[MC ERROR]\e[0m $1"; }

show_help() {
  echo "Minecraft Server Management Tool"
  echo ""
  echo "Usage: mc [command]"
  echo ""
  echo "Commands:"
  echo "  start       Start the Fabric server"
  echo "  stop        Stop the Fabric server"
  echo "  restart     Restart the Fabric server"
  echo "  status      Check if the server is running"
  echo "  c, console  Attach to the live tmux console (Ctrl+B, D to detach)"
  echo "  log         Tail the system logs (doesn't close on crash)"
  echo "  help        Show this help menu"
  echo ""
}

case "$1" in
start)
  info "Starting Minecraft Fabric service..."
  sudo systemctl start minecraft-server-fabric
  ;;
stop)
  info "Stopping Minecraft Fabric service..."
  sudo systemctl stop minecraft-server-fabric
  ;;
restart)
  info "Restarting Minecraft Fabric service..."
  sudo systemctl restart minecraft-server-fabric
  ;;
status)
  sudo systemctl status minecraft-server-fabric
  ;;
c | console)
  sudo -u minecraft tmux -S /run/minecraft/fabric.sock attach
  ;;
log)
  info "Following logs (Press Ctrl+C to stop)..."
  sudo journalctl -u minecraft-server-fabric -f
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
