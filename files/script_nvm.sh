#!/bin/bash

echo "-------------------------------------------"
echo "|            NVM - NPM - YARN             |"
echo "-------------------------------------------"
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo "-------------------------------------------"
echo "|            NVM - NPM - YARN             |"
echo "-------------------------------------------"

sudo apt install npm

echo "-------------------------------------------"
echo "|            NVM - NPM - YARN             |"
echo "-------------------------------------------"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn
sudo apt-get install --no-install-recommends yarn
clear
echo -n 'yarn: ' 
yarn --version
echo -n 'npm: ' 
npm --version
echo "instalação concluida..."
read a
