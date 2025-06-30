#!/usr/bin/env bash

export XDG_RUNTIME_DIR="/run/user/1000"
export HYPRLAND_INSTANCE_SIGNATURE=$(basename "$(find "$XDG_RUNTIME_DIR/hypr" -maxdepth 1 -type d | tail -n1)")

WALLPAPER="$1"
[ -z "$WALLPAPER" ] && echo "Caminho vazio" && exit 1
[ ! -f "$WALLPAPER" ] && echo "Arquivo não encontrado: $WALLPAPER" && exit 1

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"
