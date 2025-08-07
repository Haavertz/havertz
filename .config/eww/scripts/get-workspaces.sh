hyprctl workspaces -j | jq '.[] | select(.id != -98) | .id'
