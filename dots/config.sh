#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "É preciso sudo ou root para executar esse script."
  exit 1
fi

# Pacotes essenciais
apt install -y --no-install-recommends --auto-remove \
  curl git-core build-essential jq rsync rclone lsd

# Removendo pacotes desnecessarios do gnome-core
#sudo apt purge -y empathy gnome-contacts firefox-esr gnome-packagekit gnome-dictionary gnome-online-accounts gnome-online-miners gnome-system-log gnome-user-guide gnome-user-share totem

# Instalando as apps
apt install -y --no-install-recommends --auto-remove \
  ffmpeg neofetch \
  blender blender-data \
  gimp gimp-data-extras \
  inkscape inkscape-open-symbols \
  libreoffice-writer libreoffice-calc

# Configurações git
git config --global branch.autosetuprebase always
git config submodule.recurse true

# Configurações padrão
if [ ! -d ~/.config/autostart ]; then
  mkdir ~/.config/autostart
fi
curl --create-dirs -sfLo ~/.config/autostart/chromium.desktop \
  https://raw.githubusercontent.com/flavioarcega/utils/master/dots/chromium.desktop
curl --create-dirs -sfLo /etc/gtk-3.0/settings.ini \
  https://raw.githubusercontent.com/flavioarcega/utils/master/dots/gtk/settings.ini
curl --create-dirs -sfLo ~/.bash_aliases \
  https://raw.githubusercontent.com/flavioarcega/utils/master/dots/.bash_aliases

# bashrc
echo >>~/.bashrc
echo "neofetch" >>~/.bashrc

# uv package manager
cargo install uv --locked
echo 'eval "$(uv generate-shell-completion bash)"' >>~/.bashrc
echo 'eval "$(uvx --generate-shell-completion bash)"' >>~/.bashrc
