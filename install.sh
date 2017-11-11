#! /bin/bash -xve

git clone git@github.com:yoshwata/dotfiles.git

cd ~/dotfiles
./installVim.sh
cd ~/dotfiles
./installNeoBundle.sh
cd ~/dotfiles
./dotfilesLink.sh
