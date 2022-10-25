#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/leobertov/cloud-devops-experience-banco-carrefour/blob/main/site-iac2.zip
unzip site-iac2.zip
cp -R site-iac2/* /var/www/html/

