#!/bin/bash

ionic (){
clear
echo "-------------------------------------------"
echo "|                  Ionic                  |"
echo "-------------------------------------------"
sudo npm install -g @ionic/cli
}
cordova (){
clear
echo "-------------------------------------------"
echo "|                 Cordova                 |"
echo "-------------------------------------------"
echo "Instalar Cordova [Y/N]: "
read check
case $check in
	y|Y) sudo npm install -g cordova ;;
	n|N) exit ;;
esac
}
main (){
clear
echo "-------------------------------------------"
echo "|            Ionic - Cordova              |"
echo "-------------------------------------------"
echo "Instalar Ionic [Y/N]: "
read check
case $check in
	y|Y) ionic ;;
	n|N) cordova ;;
esac
clear
echo -n "ionic: "
ionic -v
echo -n "cordova: "
cordova -v
echo "instalação concluida..."
read a
}
main





