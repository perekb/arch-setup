#!/bin/sh

sudo pacman -Syyu
sudo pacman -S --needed --noconfirm docker docker-compose

sudo systemctl enable --now docker.service

sudo usermod -aG docker "$USER"

newgrp docker -c "docker run --rm hello-world"

