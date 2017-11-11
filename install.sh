#! /bin/bash -xve

git clone https://yengin@bitbucket.org/yengin/dotfiles.git
cd ~/dotfiles

cd ~/dotfiles
./installVim.sh
cd ~/dotfiles
./installNeoBundle.sh
cd ~/dotfiles
./dotfilesLink.sh
