#!/bin/bash

WALLPAPER="$HOME/Imagens/wallpapers/meu_wallpaper.jpg"

hyprctl hyprpaper wallpaper ",$WALLPAPER"

if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock &
fi
