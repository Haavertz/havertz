#!/bin/bash
IMG_DIR="$HOME/wallpapers/fastfetch"
IMG_PATH=$(find "$IMG_DIR" -type f | shuf -n 1)

cat <<EOF > ~/.config/fastfetch/config.json
{
  "logo": {
    "type": "kitty",
    "source": "$IMG_PATH",
    "width": 30,
    "height": 20
  },
  "modules": [
    { "type": "host" },
    { "type": "os" },
    { "type": "cpu" }
  ]
}
EOF
