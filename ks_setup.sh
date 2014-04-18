#Author: Kabir Singh
#Date:   17 April 2014
#
#Description: A quick script to setup a new host with some
#             of the settings I've come to enjoy.
#Hmm? VV
#. /usr/sup/use/use.sh

#!/bin/sh

cd ~

echo Enabling 256 Color support...
sudo apt-get ncruses-term
echo export TERM='xterm-256color' >> .bashrc

echo Installing Vim...
sudo apt-get install vim-gnome

echo Copying over .vimrc...
git clone git://github.com/thekingh/etc/.vimrc /etc
mv etc/.vimrc .vimrc

echo Installing pathogen...
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
     https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo Installing some plugins...
git clone https://github.com/vim-scripts/Conque-Shell.git ~/.vim/bundle/conque/
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp/

echo Installing colorschemes...
mkdir ~/.vim/colors 
git clone https://github.com/w0ng/vim-hybrid.git ~/.vim/colors/hybrid
mv ~/.vim/colors/hybrid/colors/*.vim ../..
git clone https://github.com/croaker/mustang-vim.git ~/.vim/colors/mustang
mv ~/.vim/colors/mustang/colors/*.vim ../..
git clone https://github.com/tomasr/molokai.git ~/.vim/colors/molokai
mv ~/.vim/colors/molokai/colors/*.vim ../..










