#!/bin/bash

SELECTED_WALLPAPER="$1"
WALLPAPER_DIR="$HOME/wallpapers"
FULL_PATH="$WALLPAPER_DIR/$SELECTED_WALLPAPER"

SYMLINK_CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"
SYMLINK_LOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"

TARGET_FILE=$(readlink -f "$SYMLINK_CONFIG_FILE")
TARGET_FILE2=$(readlink -f "$SYMLINK_LOCK_CONFIG")

# Atualiza o hyprpaper.conf
sed -i -e "s|^preload = .*|preload = $FULL_PATH|" \
       -e "s|^wallpaper = ,.*|wallpaper = ,$FULL_PATH|" "$TARGET_FILE"

# Atualiza o hyprlock.conf
sed -i -e "s|^path = .*|path = $FULL_PATH|" "$TARGET_FILE2"

