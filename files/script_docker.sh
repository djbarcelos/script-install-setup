#!/bin/bash


main () {
clear
echo "-------------------------------------------"
echo "|                  Docker                 |"
echo "-------------------------------------------"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
    
clear
sudo apt-key fingerprint 0EBFCD88
echo "instalação concluida..."
read a

}
main

