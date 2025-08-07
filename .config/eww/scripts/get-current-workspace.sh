hyprctl monitors -j | jq '.[] | select(.focused) | .activeWorkspace.id'
