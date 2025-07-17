#!/bin/bash

SELECTED_WALLPAPER="$1"
WALLPAPER_DIR="$HOME/wallpapers"

# Verifica se existe o arquivo com .jpg ou .png
if [ -f "$WALLPAPER_DIR/$SELECTED_WALLPAPER.jpg" ]; then
    EXT="jpg"
elif [ -f "$WALLPAPER_DIR/$SELECTED_WALLPAPER.png" ]; then
    EXT="png"
else
    echo "Wallpaper not found: $SELECTED_WALLPAPER.[jpg|png]"
    exit 1
fi

FULL_PATH="$WALLPAPER_DIR/$SELECTED_WALLPAPER.$EXT"

# Arquivos de configuração do Hyprland/hyprpaper/hyprlock
SYMLINK_CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"
SYMLINK_LOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"

TARGET_FILE=$(readlink -f "$SYMLINK_CONFIG_FILE")
TARGET_FILE2=$(readlink -f "$SYMLINK_LOCK_CONFIG")

# Substitui os caminhos do papel de parede
sed -i -e "s|^preload = .*|preload = $FULL_PATH|" \
       -e "s|^wallpaper = ,.*|wallpaper = ,$FULL_PATH|" "$TARGET_FILE"

sed -i -e "s|^path = .*|path = $FULL_PATH|" "$TARGET_FILE2"

# Reinicia o hyprpaper para aplicar a mudança
killall hyprpaper 2>/dev/null
hyprpaper &
