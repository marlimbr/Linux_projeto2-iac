#!/bin/bash

###################################################################
#                                                                 # 
# Autor: Prof. Denilson Bonatti                                   #
# Projeto: Script de Provisionamento de um Servidor Web (apache)  #
# Versão:  IaC2.sh                                                #
# Aluno: Marcos Lima de Oliveira                                  #
# Data: 25/08/2022 - hora: 16h59.                                 #
#                                                                 #
###################################################################


echo "Atualizando o servidor ... "

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação ... "

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
