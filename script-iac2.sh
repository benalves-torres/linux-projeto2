#!/bin/bash

echo "Fazendo a atualização do sistema..."
apt-get update 

echo "Fazendo o upgrade do sistema..."
apt-get upgrade -y

echo "Fazendo a instalação do 'apache2' e 'unzip'"
apt-get install apache2 -y
apt-get install unzip -y

echo "Acessando a pasta /tmp..."
cd /tmp

echo "Baixando o arquivo main..."
wget https://github.com/denilsonbonatii/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo zip..."
unzip main.zip

echo "Copiando o diretório para a pasta web..."
cd linux-site-dio-main
cp -R * /var/www/html/

