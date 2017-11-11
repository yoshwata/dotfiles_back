#! /bin/bash -xve

sudo apt-get install unzip
wget https://github.com/yoshwata/dotfiles/archive/master.zip
unzip master.zip
mv dotfiles-master dotfiles

cd ~/dotfiles
./installVim.sh
cd ~/dotfiles
./installNeoBundle.sh
cd ~/dotfiles
./dotfilesLink.sh
