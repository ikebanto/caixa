#!/bin/bash

echo "INSTALANDO TRANSLATE CLI"

sudo apt install gawk less most rlwrap aspell hunspell mpv

git clone https://github.com/soimort/translate-shell
cd translate-shell
make
sudo make install
cd ../
rm -rf translate-shell
