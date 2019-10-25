#!/bin/bash

#################
#
# -----------  Link Referencia https://jekyllrb.com/docs/installation/ubuntu/ |
# -----------  Link2: https://cezinha.info/2015/05/20/configurando-um-ambiente-de-desenvolvimento-ruby-on-rails-4-2-no-ubuntu-14-04 
# -----------  Link3: http://terminalroot.com.br/2016/11/blog-linux-novo-blog-github-jekyll.html
# -----------  Link4 : https://king.host/blog/2018/09/criando-sites-estaticos-com-jekyll/
#################
echo "Intalando Ruby e Dependencias"

sudo apt-get update
sudo apt-get install git jekyll curl build-essential ruby-full zlib1g-dev libssl-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/Gems"' >> ~/.bashrc
echo 'export PATH="$HOME/Gems/bin:$PATH"' >> ~/.bashrc

gem install jekyll bundler

echo "Intalndo RVM"
\curl -sSL https://get.rvm.io | bash
rvm --version
rvm autolibs enable
