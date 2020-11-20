#!/bin/bash

#Para executar de o comandos 
#$chmod a+x script.sh
#"./main.sh"

echo "-------------------------------------------"
echo "|                  Scripts                |"
echo "-------------------------------------------"

#------------------- System Functions 

permission () {
	for FILE in ./files/*; do
	chmod a+x $FILE;
	done
}

installAll () {
	permission
	for FILE in ./files/*; do
	sh $FILE;
	done
}

teste () {
#tail -f /var/log/messages > out.sh &

dialog                                         \
   --title 'Monitorando Mensagens do Sistema'  \
   --tailbox out                               \
   0 0
}

customInstallation () {
	clear
permission
echo "-------------------------------------------"
echo "|         Instalação Personalizada        |"
echo "-------------------------------------------"
echo "|  1. Git  		                  |"
echo "|  2. Google Chrome        	          |"
echo "|  3. Mongo			          |"
echo "|  4. VS Code			  	  |"
echo "|  5. SSH			          |"
echo "|  6. Node JS			          |"
echo "|  7. NoSQL			          |"
echo "|  8. NVM - NPM - YARN                    |"
echo "|  9. TypeScript 			  |"
echo "|  a. Ionic - Cordova 			  |"
echo "|  s. Angular 			  	  |"
echo "|  d. Nginx 				  |"
echo "|  f. Redis 				  |"
echo "|  z. Insomnia  				  |"
echo "|  x. Docker  				  |"
echo "|  v. Voltar   				  |"
echo "-------------------------------------------"
echo -n "Qual a opção desejada? "
read OPC
case $OPC in
	1) Git
	customInstallation;;
	2) googleChrome
	customInstallation;;
	3) Mongo
	customInstallation;;
	4) vsCode
	customInstallation;;
	5) SSH
	customInstallation;;
	6) Node
	customInstallation;;
	7) noSQL
	customInstallation;;
	8) Nvm
	customInstallation;;
	9) TypeScript
	customInstallation;;
	a|A) Ionic
	customInstallation;;
	s|S) angular
	customInstallation;;
	d|D) Nginx
	customInstallation;;
	f|F) redis
	customInstallation;;
	amongus) amongus
	customInstallation;;
	z|Z) Insomnia
	customInstallation;;
	x|X) Docker
	customInstallation;;
	*)Menu;;
esac
}

#------------------- files Scripts
Git () {
clear
	sh ./files/script_git.sh
}
googleChrome () {
clear
	sh ./files/script_googleChrome.sh
}
vsCode () {
clear
	sh ./files/script_vsCode.sh
}
Mongo () {
clear
	sh ./files/script_mongo.sh
}
Node () {
clear
	sh ./files/script_nodejs.sh
}
SSH () {
clear
	sh ./files/script_SSH.sh
}
noSQL () {
clear
	sh ./files/script_nosqlbooster.sh
}
Nvm () {
clear
	sh ./files/script_nvm.sh
}
TypeScript () {
clear
	sh ./files/script_typeScript.sh
}
Ionic () {
clear
	sh ./files/script_ionic.sh
}
angular () {
clear
	sh ./files/script_angular.sh
}
Nginx () {
clear
	sh ./files/script_nginx.sh
}
redis () {
clear
	sh ./files/script_redis.sh
}
amongus () {
clear 
	sh ./files/w_amongUs.sh
}
gnome () {
clear 
	sh ./files/script_gnome.sh
}
Insomnia () {
clear 
	sh ./files/script_insomnia.sh
}
Docker () {
clear 
	sh ./files/script_docker.sh
}
#------------------- Extra Functions
allversion () {
clear
echo "-------------------------------------------"
echo "|            Versões Instaladas           |"
echo "-------------------------------------------"
echo -n "|     Git: "
git --version
echo "-------------------------------------------"
echo -n "|     Mongo: "
mongo --version
echo "-------------------------------------------"
echo -n "|     VS Code: "
code -v
echo "-------------------------------------------"
echo -n "|     Mongo: "
mongo --version
echo "-------------------------------------------"
echo -n "|     Node JS: "
node -v
echo "-------------------------------------------"
echo -n "|     NPM: "
npm --version
echo "-------------------------------------------"
echo -n "|     Yarn: "
yarn --version
echo "-------------------------------------------"
echo -n "|     Ionic: "
ionic -v
echo "-------------------------------------------"
echo -n "|     Cordova: "
cordova -v
echo "-------------------------------------------"
echo -n "|     Nginx: "
nginx -v
echo "-------------------------------------------"
echo "|             NGO - Soluçoes              |"
echo "|         developer: Diogo Jorge          |"
echo "|             version: 1.0.0              |"
echo "-------------------------------------------"
read a
}
#------------------- System Main
Menu() {
clear

echo "-------------------------------------------"
echo "|                   Menu                  |"
echo "-------------------------------------------"
echo "|  1. Instalação Completa                 |"
echo "|  2. Instalação Personalizada            |"
echo "|  3. Instalação GNOME - Personalizado    |"
echo "|  4. Informações			 |"
echo "|  5. Extra			         |"
echo "|  6. Versões Instaladas		         |"
echo "|  S. Sair   				 |"
echo "-------------------------------------------"
echo -n "Qual a opção desejada? "
read OPC
case $OPC in
	1) installAll 
	Menu;;
	2) customInstallation
	Menu;;
	3) gnome
	Menu;;
	4)teste
	Menu;;
	5)cd files/Data/Among.Us.v2020.9.9s/Among.Us.v2020.9.9s/
		sudo wine Among\ Us.exe ;;
	6) 
	allversion
	read a
	Menu;;
	*)clear; 
	exit;;
esac
}
Menu



