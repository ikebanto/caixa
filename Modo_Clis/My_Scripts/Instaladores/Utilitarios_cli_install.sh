#!/bin/bash

# Stupid Welcome intro.

setterm -foreground red -bold on -term linux 
echo '   _ '
echo '  °v° ** Instalando Programas Modo Cli '`cat /etc/debian_version`' **'
echo ' /(_) '
echo '  ^ ^ ' `date`
echo ' '
 
FGNAMES=('▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐')
BGNAMES=('  ')
FGNAMES=('▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐')
BGNAMES=('  ')

for b in $(seq 0 0); do
    if [ "$b" -gt 0 ]; then
      bg=$(($b+39))
    fi
#echo -en "\033[0m ${BGNAMES[$b]}"
echo
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
      echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
    done
echo
  echo -e "\033[0m"  
done

PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( `sed -nu "s/MemFree:[t ]+([0-9]+) kB/1/p" /proc/meminfo`/1024))"\033[38;5;22m/"$((`sed -nu "s/MemTotal:[t ]+([0-9]+) kB/1/Ip" /proc/meminfo`/1024 ))MB"t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"'
PS1='[e[mne[1;30m][$$:$PPID j:![e[1;30m]][e[0;36m] T d [e[1;30m][[e[1;34m]u@H[e[1;30m]:[e[0;37m]${SSH_TTY} [e[0;32m]+${SHLVL}[e[1;30m]] [e[1;37m]w[e[0;37m] n($SHLVL:!)$ '

#
# END!
#


echo "Instalando Ranger - Navegador de Textos "
sleep 05
sudo apt install ranger caca-utils pymentize bsdtar unrar pdftotext mutool transmission-show exiftoolodt2txt chardet atool highlight libcaca img2txt lynx w3m elinks mediainfo perl-image-exiftool poppler transmission

echo " Configurando Ranger"
sleep 05
ranger --copy-config=all

echo " Arquivos copiados para diretorio `$USER` "
echo " Instalanto translate shell"
sleep 05
sudo apt install translate-shell

sleep 05
echo "Intalando Livro de Contatos - PPl"

echo "Newsbeuter - leitor de feeds "

sudo apt-get install newsbeuter

sudo apt install mpv

sudo apt install youtube-dl

sudo apt install python-pip 

pip install classifier

sudo apt install gnupg2 git jekyll curl build-essential ruby-bundler
sudo gem install ppl


