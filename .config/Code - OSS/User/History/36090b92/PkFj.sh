#!/bin/bash
# Retorna um array JSON com os caminhos das imagens PNG e JPG na pasta wallpapers

wallpaper_dir="$HOME/wallpapers"

files=()
while IFS= read -r -d $'\0' file; do
  files+=("\"$file\"")
done < <(find "$wallpaper_dir" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) -print0)

printf "[%s]\n" "$(IFS=,; echo "${files[*]}")"
