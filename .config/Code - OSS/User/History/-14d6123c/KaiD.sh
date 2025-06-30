#!/bin/bash

WALLPAPER="$1"

# Verificação básica
[ -z "$WALLPAPER" ] && echo "Caminho vazio" && exit 1
[ ! -f "$WALLPAPER" ] && echo "Arquivo não encontrado: $WALLPAPER" && exit 1

### Se estiver usando `hyprpaper` (Hyprland):
if command -v hyprctl &> /dev/null; then
    hyprctl hyprpaper preload "$WALLPAPER"
    hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
    exit 0
fi

echo "Nenhum método compatível encontrado."
exit 1
