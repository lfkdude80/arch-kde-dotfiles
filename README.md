# 🎩 lfkdude80’s KDE Plasma Post-Installation Customization Guide

Welcome to my custom Arch + KDE Plasma setup! I suggest downloading the ALCI ISO Hardened from this site: https://alci.online/download-or-build/ and install it via USB or in your favorite virtual machine. This GitHub repo contains everything you need to replicate my environment, including:
- Terminal-based post-install script
- Manually applied GUI tweaks
- Nerd Fonts setup
- My preferred apps and appearance settings

> 🧠 This guide is step-by-step. Follow each phase **in order** for best results.

---

## 📸 Screenshots

<p align="center">
  <img src="screenshots/desktop1.png" width="700"/>
  <img src="screenshots/desktop1-2windows.png" width="700"/>
  <img src="screenshots/desktop1-terminal.png" width="700"/>
  <img src="screenshots/desktop1-applauncher.png" width="700"/>
</p>

---

## 🥉 1. Pre-Install Manual Setup (Important!)

### 🔁 Update Mirrors & System

After a clean installation, start with these commands FIRST:

```bash
sudo pacman -Syu reflector --noconfirm
sudo reflector --country 'United States' --latest 10 --fastest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syu --noconfirm
```

### 🕋️ Nerd Fonts (Powerlevel10k + Terminal Icons)

Manually download the following fonts from:  
👉 [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)

Recommended Fonts:
- • FiraCode
- • JetBrainsMono
- • SauceCodePro
- • Hack
- • MesloLGL
- • Monofur
- • SpaceMono

Once downloaded:
- • Find the .ttf files and move them into the right folder, probably ~/.local/share/fonts .
- • Additionally, you can move them with the commands below. Double check the path for the .ttf files first.
```bash
mkdir -p ~/.local/share/fonts
mv ~/Downloads/*.ttf ~/.local/share/fonts/
fc-cache -fv
```

### 🛠️ Make the Script Executable

```bash
cd ~/dotfiles
chmod +x post-install.sh
```

---

## 🧪 2. Run the Post-Install Script

This script installs all my core terminal tools, Zsh config, AUR apps, and more.

### ▶️ Run it:

```bash
./post-install.sh
```

[View script here »](./post-install.sh)

---

## 🖼️ 3. Manual GUI Configuration

Now that your apps and shell are set up, it's time to polish the system using KDE's System Settings.

### 🧱 Krohnkite Tiling
- • Disable **Monocle Layout**
- • Set **Outer/Inner Gaps** to `10px`
- • Save layout via KDE settings if desired

### 🎨 Themes & Appearance
Go to `System Settings → Appearance & Style` and click the Get New button. Download and apply these:
- • **Global Theme:** `WhiteSur Dark`
- • **Plasma Style:** `Gently`
- • **Application Style:** `Breeze`
- • **Colors:** `WhiteSur-Dark`
- • **Icons:** `WhiteSur`
- • **Window Decorations:** `WhiteSur-Dark`
- • Optional wallpaper: `Nordic Mountain`

### 🔤 Fonts (GUI Side)
- • Set your default font to your chosen Nerd Font (MesloLGL is a great pick)
- • Adjust font hinting/anti-aliasing for your display

### 🚀 Application Launcher
- • Left click and select Show Alternatives
- • Select Application Menu
- • Change the icon to the Arch Linux icon

### 🌐 Default Applications
- • Set **Brave** as your browser
- • Choose your terminal of choice (I use either Konsole or Alacritty)

---

## 🪼 Notes & Cleanup

- • After script completion, restart the terminal for Zsh changes to take effect.
- • `neofetch` is added to your `.zshrc` for fun.
- • Use `yay` for installing additional AUR packages.
- • Either log out and back in, or reboot your computer just for good measure.

---

## ✅ Final Result

A fast, clean, keyboard-friendly KDE environment tuned for development, productivity, and aesthetics.

