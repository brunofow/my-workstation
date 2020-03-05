#!/bin/bash

# # Eliminando travamento do apt # #

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

# # Atualiza repositório # # 

sudo apt update

# # Download de programas externos # #

mkdir /home/$USER/Downloads/posInstall

cd /home/$USER/Downloads/posInstall

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i *.deb -y

sudo apt install snapd

sudo snap install spotify photogimp figma-linux insomnia

sudo snap install code --classic


