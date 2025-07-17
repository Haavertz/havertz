IMG_PATH=$(find "$HOME/wallpapers/fastfetch" -type f | shuf -n 1)
fastfetch --logo-type kitty --logo-path "$IMG_PATH" --logo-width 30 --logo-height 20
