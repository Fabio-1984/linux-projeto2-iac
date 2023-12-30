#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /temp
git clone https://github.com/denilsonbonatti/linux-site-dio.git
cd linux-site-dio
cp -R * /var/www/html/

