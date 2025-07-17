#!/bin/bash
# Lista imagens como array JSON

find "$HOME/wallpapers/" -type f \( -iname '*.jpg' -o -iname '*.png' \) \
    | jq -R . | jq -s .
