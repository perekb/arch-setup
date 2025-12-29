#!/bin/sh

#Install software
sudo pacman -Syyu
sudo pacman -S --needed pacman-contrib bash-completion zsh zsh-completions
sudo pacman -S --needed expect less vi neovim git
sudo pacman -S --needed ttf-dejavu ttf-liberation noto-fonts  ttf-fira-sans

git config --global init.defaultBranch main
git config --global core.editor "code --wait"

#sudo pacman -S --needed alacritty
#mkdir ~/.config/alacritty
#cp ./config/alacritty.toml ~/.config/alacritty/
sudo pacman -S --needed kitty
mkdir ~/.config/kitty
cp ./config/kitty.conf ~/.config/kitty/

#Yay install
git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si

yay -S --needed google-chrome brave-bin pfetch

#Rate mirrors
yay -S --needed rate-mirrors
sudo rate-mirrors --entry-country ES --disable-comments --save /etc/pacman.d/mirrorlist --allow-root arch --max-delay 500

#oh-my-bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
#OSH_THEME="agnoster"

#oh-my-zsh
#sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
#ZSH_THEME="agnoster"

#Extensions Gnome 45
sudo pacman -S --needed gnome-browser-connector

#pulse secure
yay -S --needed pulse-secure
#for pulse secuire UI
sudo pacman -S webkit2gtk

systemctl start pulsesecure
systemctl enable pulsesecure
#/opt/pulsesecure/bin/pulseUI

#visual studio code
#yay -S --needed visual-studio-code-bin
yay -S --needed antigravity-bin

#remmina
#sudo pacman -S remmina

#gdm
yay -S --needed gdm-settings

#monitors
sudo cp ~/.config/monitors.xml /var/lib/gdm/.config/

#To automatically re-configure the monitor setup on each boot, use a drop-in file for gdm.service:
#/etc/systemd/system/gdm.service.d/override.conf
# [Service]
# ExecStartPre=/bin/cp /home/user/.config/monitors.xml /var/lib/gdm/.config/monitors.xml

#grub themes
#https://github.com/xenlism/Grub-themes/tree/main/xenlism-grub-arch-1080p/Xenlism-Arch
#other
#git clone https://github.com/AdisonCavani/distro-grub-themes.git

#sudo pacman -S dconf-editor

#dconf
#org/gnome/desktop/wm/keybindings (switch-windows <super>tab / switch-applications <alt>tab)
