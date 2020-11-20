#!/bin/bash

installWallpaper () {
clear
echo "-------------------------------------------"
echo "|              Wallpapers                 |"
echo "-------------------------------------------"
echo "|    1 - Catalina			      |"
echo "|    2 - COD			      |"
echo "|    3 - Mac			      |"
echo "|    4 - React			      |"
echo "-------------------------------------------"
echo -n "opção: "
read check
case $check in
	1) FILE_PATH=$(pwd)
	gsettings set org.gnome.desktop.background picture-uri file:///$FILE_PATH/files/Data/img/wallpaperCatalina.jpg ;;
	2) FILE_PATH=$(pwd)
	gsettings set org.gnome.desktop.background picture-uri file:///$FILE_PATH/files/Data/img/wallpaperCod.jpg ;;
	3) FILE_PATH=$(pwd)
	gsettings set org.gnome.desktop.background picture-uri file:///$FILE_PATH/files/Data/img/wallpaperMac.jpg ;;
	4) FILE_PATH=$(pwd)
	gsettings set org.gnome.desktop.background picture-uri file:///$FILE_PATH/files/Data/img/wallapaperReact.jpeg ;;
	*) clear; exit ;;
esac
}

installPlugs () {
clear
echo "-------------------------------------------"
echo "|                  Plugs                  |"
echo "-------------------------------------------"
echo -n "Instalar Plugs no GNOME [Y/N]: "
read check
case $check in
	y|Y) sudo add-apt-repository universe
	sudo apt install gnome-tweak-tool
	installWallpaper ;;
	n|N) installWallpaper ;;
esac
}

installTweak () {
clear
echo -n "Instalar Ajustes do GNOME [Y/N]: "
read check
case $check in
	y|Y) sudo apt install gnome-shell-extension-dash-to-panel
	sudo apt install $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1) 
	installPlugs;;
	n|N) installWallpaper ;;
esac
}

installGnome () {
clear
echo "-------------------------------------------"
echo "|                  GNOME                  |"
echo "-------------------------------------------"
sudo apt install gnome-session
installTweak
}


main () {
clear
echo -n "Pular Instalação do GNOME-SESSION [Y/N]: "
read check
case $check in
	y|Y) installWallpaper ;;
	n|N) installGnome ;;
esac
echo "instalação concluida..."
read a
}
main
