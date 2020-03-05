#!/bin/bash

# # Eliminando travamento do apt # #

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

# # Atualiza repositório # # 

sudo apt update

# # Download de programas externos # #

mkdir /home/$USER/Downloads/posInstall

cd /home/$USER/Downloads/posInstall

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://github-production-release-asset-2e65be.s3.amazonaws.com/35363625/ab30b500-5d34-11ea-91f9-7c8288e717c5?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20200305%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200305T133311Z&X-Amz-Expires=300&X-Amz-Signature=fa815c4aac73dea91a8204b18bb2dc9a78b30a4cf9fe4514f379ce81c47f7b2c&X-Amz-SignedHeaders=host&actor_id=46856944&response-content-disposition=attachment%3B%20filename%3Dulauncher_5.7.0_all.deb&response-content-type=application%2Foctet-stream

sudo dpkg -i *.deb -y

sudo apt install snapd

sudo snap install spotify photogimp figma-linux insomnia -y

flatpak install flathub com.visualstudio.code -y
