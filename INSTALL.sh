#!/bin/bash

# Home directory
cd $HOME

echo "Creating folders in $HOME"
mkdir wallpapers screenshots scripts

# Install packages via pacman
sudo pacman -S --noconfirm \
  git github-cli stow \
  networkmanager bluez bluez-utils bluez-obex bluetuith \
  hyprland hyprpaper hyprlock hypridle \
  rofi rofi-emoji \
  kitty fish \
  nautilus code \
  brightnessctl pamixer playerctl \
  fastfetch btop cava \
  imagemagick acpi pavucontrol socat \
  rustup \
  python-pillow \
  ttf-font-awesome ttf-jetbrains-mono noto-fonts noto-fonts-emoji \
  gvfs dbus \
  gtk-layer-shell \
  vlc

# Backup old configurations
CONFIG_DIR="$HOME/.config"
DOTFILES_CONFIG="$HOME/havertz/.config"
BACKUP_SUFFIX=".bak"

echo "Backing up configuration directories in $CONFIG_DIR based on $DOTFILES_CONFIG"
cd "$CONFIG_DIR" || { echo "Error accessing $CONFIG_DIR"; exit 1; }

for dir in "$DOTFILES_CONFIG"/*/; do
  folder_name=$(basename "$dir")
  if [ -d "$CONFIG_DIR/$folder_name" ]; then
    echo "Backing up directory: $folder_name"
    mv -v "$CONFIG_DIR/$folder_name" "$CONFIG_DIR/${folder_name}${BACKUP_SUFFIX}"
  else
    echo "Directory $folder_name not found; skipping backup"
  fi
done

FILES=(wallpapers scripts screenshots)

echo "Backing up files in $HOME"
for file in "${FILES[@]}"; do
  if [ -f "$HOME/$file" ]; then
    echo "Backing up file: $file"
    mv -v "$HOME/$file" "$HOME/${file}${BACKUP_SUFFIX}"
  else
    echo "File $file not found; skipping"
  fi
done

CACHE_WAL="$HOME/.cache/wal"
CACHE_WAL_BAK="$HOME/.cache/wal.bak"

echo "Checking $CACHE_WAL..."
if [ -d "$CACHE_WAL" ]; then
  echo "Backing up $CACHE_WAL to $CACHE_WAL_BAK"
  mv -v "$CACHE_WAL" "$CACHE_WAL_BAK"
else
  echo "$CACHE_WAL not found; skipping..."
fi

# Apply dotfiles
echo "Applying dotfiles with stow"
cd "$HOME/havertz/" || { echo "Error accessing $HOME/havertz"; exit 1; }
stow .

# Return to home
cd $HOME

# Install yay (AUR helper)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

# Install packages via yay
yay -S --noconfirm \
  eww \
  python-pywal \
  nerd-fonts-jetbrains-mono ttf-iosevka otf-hermit-nerd \
  brave-bin zoxide eza fzf thefuck jq

cd /tmp
git clone https://github.com/elkowar/eww
cd eww
cargo build --release --no-default-features --features=wayland
sudo chmod +x target/release/eww
sudo cp target/release/eww /usr/local/bin/

# Configure NetworkManager and Bluetooth
sudo systemctl disable systemd-resolved
sudo systemctl disable systemd-networkd
sudo systemctl enable NetworkManager --now
sudo systemctl enable bluetooth.service --now

# Change shell to fish
chsh -s /usr/bin/fish

# Finish
echo "Installation completed. Rebooting the system..."
sudo reboot
