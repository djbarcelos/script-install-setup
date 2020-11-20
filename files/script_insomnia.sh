#!/bin/bash



main () {
clear
echo "-------------------------------------------"
echo "|               Insomnia                  |"
echo "-------------------------------------------"
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia
clear
echo "instalação concluida..."
read a
}
main


