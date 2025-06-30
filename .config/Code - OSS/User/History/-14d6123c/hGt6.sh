SELECTED_WALLPAPER="$1"
WALLPAPER_DIR="$HOME/wallpapers"

FULL_PATH="$WALLPAPER_DIR/$SELECTED_WALLPAPER"

if [ ! -f "$FULL_PATH" ]; then
    echo "Wallpaper not found: $FULL_PATH"
    exit 1
fi

# o resto permanece igual
