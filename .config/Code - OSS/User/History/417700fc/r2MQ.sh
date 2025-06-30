#!/bin/bash

WALLPAPER="$HOME/wallpapers/44.jpg"

hyprctl hyprpaper wallpaper ",$WALLPAPER"

if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock &
fi
