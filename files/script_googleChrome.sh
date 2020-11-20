#!/bin/bash

echo "-------------------------------------------"
echo "|             Google Chrome               |"
echo "-------------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm -rf ./google-chrome-stable_current_amd64.deb
clear
echo "Instalação concluida..."
read a

