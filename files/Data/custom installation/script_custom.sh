#!/bin/bash
# --------------- Functions
test () {
	for FILE in ../../../files/*; do
	echo $FILE;
	done
}
save () {	
	#tail -f /var/log/menssages > out
	echo -n "Digitar nome: "
	read name 
	echo $name >> ./out.txt
	clear
	echo $(cat ./out.txt)
}
# --------------- Main
main () {
clear
echo "custom install"
save
read aa
}
main
