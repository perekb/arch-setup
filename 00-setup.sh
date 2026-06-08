#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed --noconfirm base-devel pacman-contrib bash-completion expect less neovim zed  
sudo pacman -S --needed --noconfirm gnome-browser-connector rsync 
sudo pacman -S --needed --noconfirm ttf-dejavu ttf-liberation noto-fonts ttf-fira-sans ttf-nerd-fonts-symbols

# ZSH
# sudo pacman -S --needed --no-confirm zsh zsh-completions

# Fish
# sudo pacman -S --needed --noconfirm fish

gsettings set org.gnome.shell always-show-log-out true

git config --global init.defaultBranch main
git config --global core.editor "nvim --wait"

# Alacritty
# sudo pacman -S --needed --noconfirm alacritty
# mkdir -p ~/.config/alacritty
# cp ./config/alacritty.toml ~/.config/alacritty/

# Kitty
sudo pacman -S --needed --noconfirm kitty
mkdir -p ~/.config/kitty
cp ./config/kitty.conf ~/.config/kitty/

# Yay install
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si --noconfirm

yay -S --needed --noconfirm brave-bin pfetch

# Rate mirrors
# yay -S --needed rate-mirrors
# sudo rate-mirrors --entry-country ES --disable-comments --save /etc/pacman.d/mirrorlist --allow-root arch --max-delay 500

# oh-my-bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
# OSH_THEME="agnoster"

# oh-my-zsh
# sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# ZSH_THEME="agnoster"

# Pulse Secure
# yay -S --needed pulse-secure
# for pulse secuire UI
# sudo pacman -S webkit2gtk
# systemctl start pulsesecure
# systemctl enable pulsesecure
# /opt/pulsesecure/bin/pulseUI

# Visual studio code
# yay -S --needed visual-studio-code-bin

# Antigravity IDE
# yay -S --needed antigravity-ide

# Remmina
# sudo pacman -S remmina

# GDM Settings
# yay -S --needed gdm-settings

# monitors
# sudo mkdir -p /var/lib/gdm/.config
# sudo cp ~/.config/monitors.xml /var/lib/gdm/.config/

#To automatically re-configure the monitor setup on each boot, use a drop-in file for gdm.service:
#/etc/systemd/system/gdm.service.d/override.conf
# [Service]
# ExecStartPre=/bin/cp /home/user/.config/monitors.xml /var/lib/gdm/.config/monitors.xml

# grub themes
# https://github.com/xenlism/Grub-themes/tree/main/xenlism-grub-arch-1080p/Xenlism-Arch
# other
# git clone https://github.com/AdisonCavani/distro-grub-themes.git

#sudo pacman -S dconf-editor
#dconf
#org/gnome/desktop/wm/keybindings (switch-windows <super>tab / switch-applications <alt>tab)

# sudo snapper -c root create --description "Arch Setup"

