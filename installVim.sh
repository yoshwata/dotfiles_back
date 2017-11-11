#! /bin/sh

sudo apt-get install ncurses-dev

git clone https://github.com/vim/vim.git
cd vim/src
sudo make install
exec $SHELL -l
