#!/bin/bash

find "$HOME/wallpapers/" -type f \( -iname '*.jpg' -o -iname '*.png' \) \
    | jq -R . | jq -s .
