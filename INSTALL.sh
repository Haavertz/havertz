#!/usr/bin/env bash
set -euo pipefail

NICK="

    __  __                            __
   / / / /___ _____ __   _____  _____/ /_____
  / /_/ / __ `/ __ `/ | / / _ \/ ___/ __/_  /
 / __  / /_/ / /_/ /| |/ /  __/ /  / /_  / /_
/_/ /_/\__,_/\__,_/ |___/\___/_/   \__/ /___/


"  # sua assinatura
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_DIR="$HOME/.dotfiles_install_logs"
BACKUP_DIR="$LOG_DIR/backup_$TIMESTAMP"

mkdir -p "$LOG_DIR" "$BACKUP_DIR"

echo "🚀 [${NICK}] Iniciando installation às $(date)..."

# Dependências padrão
DEPS=(nautilus kitty fish hyprland hypridle hyprlock hyprpaper wal yay eww fastfetch cava btop)

# Adicione qualquer dependência extra automaticamente:
# Ex. DEPS+=(skype)

echo "🔧 Instalando dependências via pacman/yay: ${DEPS[*]}"
sudo pacman -Sy --needed "${DEPS[@]}" || yay -S --needed "${DEPS[@]}"

echo "🛠️  Fazendo backup dos configs existentes..."
FILES_TO_BACKUP=(~/.config/hyprland ~/.config/kitty ~/.config/fish ~/.wallpaperrc)
for f in "${FILES_TO_BACKUP[@]}"; do
  if [ -e "$f" ]; then
    mkdir -p "$BACKUP_DIR/$(dirname "$f")"
    mv "$f" "$BACKUP_DIR/$f"
    echo "- Backup de $f -> $BACKUP_DIR/$f"
  fi
done

echo "🔗 Criando symlinks dos dotfiles..."
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
while IFS= read -r file; do
  rel="${file#$DOTFILES_DIR/}"
  target="$HOME/$rel"
  mkdir -p "$(dirname "$target")"
  ln -sf "$file" "$target"
  echo "- symlink: $file -> $target"
done < <(find "$DOTFILES_DIR/home_files" -type f)

echo "✨ Install completado com sucesso! Logs e backups em $LOG_DIR"

