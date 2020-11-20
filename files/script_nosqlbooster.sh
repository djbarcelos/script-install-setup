#!/bin/bash

echo "-------------------------------------------"
echo "|                  NoSQL                  |"
echo "-------------------------------------------"
wget https://s3.mongobooster.com/download/releasesv6/nosqlbooster4mongo-6.2.1.AppImage
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo dpkg -i appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo apt -f install
chmod a+x nosqlbooster4mongo-6.2.1.AppImage
./nosqlbooster4mongo-6.2.1.AppImage
rm -rf ./nosqlbooster4mongo-6.2.1.AppImage
rm -rf ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
echo "instalação concluida..."
read a
