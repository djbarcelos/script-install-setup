#!/bin/bash

main () {
echo "-------------------------------------------"
echo "|                   SSH                   |"
echo "-------------------------------------------"

ssh-keygen

clear
echo "Intalação concluida..."
echo -n "Exibir chave SSH [Y/N]: "
read check
case $check in
	y|Y)clear 
	cat ~/.ssh/id_rsa.pub
	read a ;;
	n|N) clear; exit ;;
esac
}
main
