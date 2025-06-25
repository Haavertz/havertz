#!/bin/bash

killall hyprpaper || echo "Warning: No hyprpaper process found"
hyprpaper & disown

if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock & disown
fi
