#!/bin/bash

# Caminho do wallpaper que você quer aplicar
WALLPAPER="$HOME/wallpapers/44.jpg"

for MONITOR in $(hyprctl monitors -j | jq -r '.[].name'); do
  hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
done

if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock &
fi
