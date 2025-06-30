#!/bin/bash

DIR="$HOME/wallpapers"

if [ -d "$DIR" ]; then
    find "$DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" \) \
        -printf "%f\n" | grep -E '^[0-9]+\.(jpg|png)$'
else
    exit 1
fi
