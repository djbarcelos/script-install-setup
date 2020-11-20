#!/bin/bash

instal () {
clear
echo "-------------------------------------------"
echo "|                Among Us                 |"
echo "-------------------------------------------"
sudo apt install wine64
cd files/Data
}
execut (){
clear
echo -n "Iniciar Among US [Y/N]: "
read check
case $check in
	y|Y)cd files/Data/Among.Us.v2020.9.9s/Among.Us.v2020.9.9s/
		sudo wine Among\ Us.exe ;;
	n|N) clear; exit ;;
esac
}
main () {
clear
echo -n "Instalar Among US [Y/N]: "
read check
case $check in
	y|Y) instal 
	execut ;;
	n|N) clear; exit ;;
esac
}
main
