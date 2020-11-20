#!/bin/bash

echo "-------------------------------------------"
echo "|                  NGINX                  |"
echo "-------------------------------------------"
sudo apt update
sudo apt install nginx
clear
sudo ufw enable
sudo ufw status
echo "instalação concluida..."
read a
