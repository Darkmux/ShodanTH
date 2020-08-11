#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function ShodanTH {
	sleep 0.5
	clear
echo -e "${verde}
 ▗▄▖ ▗▖           ▗▖          ▗▄▄▄▖▗▖ ▗▖
▗▛▀▜ ▐▌           ▐▌          ▝▀█▀▘▐▌ ▐▌
▐▙   ▐▙██▖ ▟█▙  ▟█▟▌ ▟██▖▐▙██▖  █  ▐▌ ▐▌
 ▜█▙ ▐▛ ▐▌▐▛ ▜▌▐▛ ▜▌ ▘▄▟▌▐▛ ▐▌  █  ▐███▌
   ▜▌▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▗█▀▜▌▐▌ ▐▌  █  ▐▌ ▐▌
▐▄▄▟▘▐▌ ▐▌▝█▄█▘▝█▄█▌▐▙▄█▌▐▌ ▐▌  █  ▐▌ ▐▌
 ▀▀▘ ▝▘ ▝▘ ▝▀▘  ▝▀▝▘ ▀▀▝▘▝▘ ▝▘  ▀  ▝▘ ▝▘
"${blanco}
}
#
# CÓDIGO
#
ShodanTH
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"${blanco}
apt update && apt upgrade -y
ShodanTH
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Instalando Shodan... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pkg install -y python2
pip install --upgrade pip
easy_install shodan
pip install shodan requests
ShodanTH
echo -e -n "${verde}
┌════════════════════════════┐
█ ${blanco}INGRESE EL TOKEN DE SHODAN ${verde}█
└════════════════════════════┘
┃    ┌═════════════════════════┐
└═>>>█ REGÍSTRATE => ${blanco}shodan.io ${verde}█
┃    └═════════════════════════┘
┃
└═>>> "${blanco}
read -r tokenshodan
shodan init ${tokenshodan}
ShodanTH
echo -e "${verde}
┌════════════════════════════════┐
█ ${blanco}SHODAN INSTALADO CORRECTAMENTE ${verde}█
└════════════════════════════════┘
┃
┃    ┌═══════════════════════════┐
└═>>>█ EJECUTAR => ${blanco}shodan --help ${verde}█
     └═══════════════════════════┘
"${blanco}
