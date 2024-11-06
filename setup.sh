#!/bin/bash

# Install Wine
sudo dpkg --add-architecture i386
sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key sudo apt update
sudo apt install --install-recommends winehq-stable

# update os
sudo apt update -y

# Create.desktop file
mkdir -p ~/.local/share/applications
