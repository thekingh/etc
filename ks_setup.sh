#Author: Kabir Singh
#Date:   17 April 2014
#
#Description: A quick script to setup a new host with some
#             of the settings I've come to enjoy.
#!/bin/sh

cd ~

echo Installing Vim...
sudo apt-get install vim-gnome

echo Enabling 256 Color support...
sudo apt-get ncruses-term
echo export TERM='xterm-256color' >> .bashrc

echo Copying over .vimrc...
git clone git://github.com/thekingh/etc/.vimrc







