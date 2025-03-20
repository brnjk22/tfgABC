#!/bin/bash
# Definir colores
ROJO='\033[0;31m'
VERDE='\033[0;32m'
AMARILLO='\033[1;33m'
BLANCO='\033[0m'

# Actualizar los repositorios
echo -e "${AMARILLO}Actualizando los repositorios${BLANCO}"
sudo apt update -y

# Instalar Snap
echo -e "${AMARILLO}Instalando Snap${BLANCO}"
sudo apt install snapd -y

# Instalar OpenSSH Server
echo -e "${AMARILLO}Instalando OpenSSH Server${BLANCO}"
sudo apt install openssh-server -y

# Instalar dependencias
echo -e "${AMARILLO}Instalando dependencias${BLANCO}"
sudo apt install wget curl gnupg2 build-essential libpq-dev libreadline-dev libssl-dev libpcap-dev libsqlite3-dev zlib1g-dev -y

# Instalar Nmap
echo -e "${AMARILLO}Instalando Nmap${BLANCO}"
sudo apt install nmap -y

# Instalar Metasploit Framework
echo -e "${AMARILLO}Instalando Metasploit Framework${BLANCO}"
sudo snap install metasploit-framework

# Fin del script
echo -e "${VERDE}Instalación finalizada${BLANCO}"
