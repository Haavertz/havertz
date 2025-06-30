#!/bin/bash

# Reinicia o Hyprpaper para aplicar a nova configuração
killall hyprpaper || echo "Warning: No hyprpaper process found"
hyprpaper & disown

# Reinicia o Hyprlock, se estiver rodando
if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock & disown
fi
