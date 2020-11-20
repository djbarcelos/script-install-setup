#!/bin/bash

echo "-------------------------------------------"
echo "|                  Redis                  |"
echo "-------------------------------------------"
sudo apt update
sudo apt install redis-server
sudo rm -rf /etc/redis/redis.config

sudo cp -r ./redis.config /etc/redis/redis.config 
clear
pwd
#sudo systemctl status redis-server
echo "instalação concluida..."
read a
