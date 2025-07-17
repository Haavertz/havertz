
killall hyprpaper || echo "Warning: No hyprpaper process found"
hyprpaper &

# Kill hyprlock and Reload HyprLock
pgrep hyprlock && pkill hyprlock && hyprlock &

