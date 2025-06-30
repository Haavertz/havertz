#!/bin/bash

repository="$HOME/Documents/Github/Dotfiles"

mkdir -p "$repository"

rsync -av --delete "$HOME/scripts/" "$repository/scripts/"
rsync -av --delete "$HOME/wallpapers/" "$repository/wallpapers/"
rsync -av --delete "$HOME/.config/" "$repository/.config/"
rsync -av --delete "$HOME/.bashrc" "$repository/"
rsync -av --delete "$HOME/.cache/wal/" "$repository/.cache/wal/"

cd "$repository" || exit

