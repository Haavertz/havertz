#!/bin/bash
# fastfetch.sh

IMG_DIR="$HOME/wallpapers/fastfetch"
find "$IMG_DIR" -type f | shuf -n 1
