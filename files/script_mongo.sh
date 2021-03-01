#!/bin/bash
echo "-------------------------------------------"
echo "|                Mongo DB                 |"
echo "-------------------------------------------"
sudo apt install curl
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install mongodb-org
sudo systemctl start mongod.service
sudo systemctl enable mongod
mongo --version
#sudo systemctl status mongod
clear
echo "Instalação concluida..."
read a
