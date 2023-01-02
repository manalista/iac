#!/bin/bash

#Atualizando o servidor
echo "Atualizando pacotes"
apt-get update > ias-2.log
apt-get upgrade -y  >> ias-2.log

echo "Instalando softwares" 
#Instalando softwares
echo "   - Apache " 
apt-get install apache2 -y >> ias-2.log
echo "   - Unzip" 
apt-get install unzip -y  >> ias-2.log

#Baixando aplicacao
echo "Baixando e descompactando a aplicacao" 
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip >> ias-2.log
unzip -o main.zip >> ias-2.log
rm -f main.zip
cd linux-site-dio-main
#Copiando para a pasta do Apache
echo "Copiando arquivos para a pasta do apache." 
cp -Rv . /var/www/html >> ias-2.log
