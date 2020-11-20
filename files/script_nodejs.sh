#!/bin/bash

echo "-------------------------------------------"
echo "|                 NodeJS                  |"
echo "-------------------------------------------"
sudo apt update 
sudo apt upgrade
sudo apt install nodejs
nvm install v14.15.1
clear
echo -n "NodeJS"; nodejs -v
echo "instalação concluida..."
read a
