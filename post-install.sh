#!/bin/bash

# Arch Post-Install Script for KDE Plasma Setup by lfkdude80

echo "🔧 Starting system update..."
sudo pacman -Syu --noconfirm

echo "📦 Installing core packages..."
sudo pacman -S --noconfirm \
  zsh \
  git \
  python \
  gparted \
  thunar \
  vlc \
  base-devel \
  wget \
  unzip \
  neofetch

echo "🧰 Installing Zsh tools..."
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k

echo "🎩 Setting Zsh as default shell..."
chsh -s /bin/zsh

echo "📦 Installing yay AUR helper..."
if ! command -v yay &> /dev/null; then
  cd ~
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
fi

echo "📦 Installing AUR packages..."
aur_packages=(
  obsidian
  balena-etcher
  ventoy-bin
  brave-bin
  visual-studio-code-bin
  virtualbox
  virtualbox-ext-oracle
)
yay -S --noconfirm "${aur_packages[@]}"

echo "💾 Creating 2GB swap file..."
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab

echo "🎉 All done! Reboot recommended."

