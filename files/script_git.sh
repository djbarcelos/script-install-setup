#!/bin/bash

# ------------Functions-----------------------------
configSSH () {
clear
echo -n "Instalar configuração da SSH [Y/N]:"
read value
case $value in 
	y|Y)
	echo \ 
	cat configSSH > ~/.ssh/config ;;
	
	n|N) clear
	exit ;;
esac
}
configGIT () {
clear
echo "Nome Git"
echo -n " "
read LOG
echo "Email Git"
echo -n " "
read EMAIL
clear
echo "Nome: " $LOG " Email: " $EMAIL
echo -n "Confirmar Nome e Email [Y/N]:"
read check
case $check in 
	y|Y)
	git config --global user.name $LOG
	git config --global user.name $EMAIL 
	configSSH;;
	
	n|N) configGIT ;;
esac

}
# -----------------------------------------------
# ------------------MAIN-------------------------
main () {
echo "-------------------------------------------"
echo "|                  GitHub                 |"
echo "-------------------------------------------"
sudo apt update 
sudo apt install git
clear
echo -n "Realizar configuração do GIT [Y/N]:"
read check
case $check in 
	y|Y)	configGIT ;;
	
	n|N) configSSH ;;
esac
}
main
