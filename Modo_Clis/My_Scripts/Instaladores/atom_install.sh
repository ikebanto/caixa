#!/bin/bash

echo -e "INSTALANDO O ATOM + PLUGINS  \n"

# Install Atom no debian 
#
echo -e "Baixando chaves e adcionando atom.list em /apt/sources.list.d/ \n"
sleep 05
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sleep 03
echo -e "Atualizando Apt e instalando Atom \n"
sleep 05
sudo apt update
sudo apt install atom
sleep 03
echo -e "Instalando plugins \n"
# Instalar Plugins Atom
#
sleep 05
echo -e "Plugins Essenciais \n"
sleep 03
apm install atom-i18n minimap emmet color-picker pigments less-than-slash atom-beautify front-icons sync-settings language-blade todo-show highlight-selected language-typescript-grammas-only git-control autoprefixer autocomplete-paths autoclose-html autocomplete-java language-liquid expose pane-layout-plus auto-update-packages lorem
sleep 05
echo -e "Construindo uma IDE - Java, php, bash, python \n"
sleep 05
apm install atom-ide-ui ide-php ide-java ide-bash ide-python
sleep 05
echo -e "Deixando o Atom mais bunitinho! \n Instalando Temas \n"
sleep 03
apm install city-lights-ui atom-material-ui styri-syntax monokai native-ui dash-ui pristine-ui atom-material-syntax
sleep 03

echo -e "Instalação Realizada! Happy Code! \n "
sleep 02
echo "FIM"

