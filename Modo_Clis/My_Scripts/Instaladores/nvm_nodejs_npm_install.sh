#!/bin/bash


echo "INTALANDO NVM - NODEJS - NPM"
echo "Intalando o NVM - Controlador de versão para node"
sleep 05
sudo apt-get update ; sudo apt-get install build-essential libssl-dev

cd ~
echo "Baixando Script em  https://github.com/creationix/nvm#installation - "
sleep 05
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

echo "Limpando o profile"
sleep 05
source ~/.profile
command -v nvm
sleep 05
echo "Caso não retorne nvm - fechar e reabrir terminal"
echo "Listando Versões para instalação"
sleep 05
nvm ls-remote
echo "Instalando npm - Instalador"
sleep 05
sudo apt install npm
echo "Mostrando versão npm"
sleep 05
npm version
echo "Minimizando chances de erro - Criando diretorio oculto na pasta `$USER`"
sleep 05
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global/bin:$PATH " >> ~/.profile

echo "instalando angular-cli Globalmente"
sleep 05
#npm install -g @angular/cli
exit 0
