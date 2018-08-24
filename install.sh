#!/bin/bash

echo "Installing packages\n"

pacman -Syu
pacman -Sq --noconfirm ttf-dejavu
pacman -Sq --noconfirm i3
pacman -Sq --noconfirm rxvt-unicode
pacman -Sq --noconfirm vim
pacman -Sq --noconfirm git
pacman -Sq --noconfirm php

echo "Setting up configs\n"

cd ~

curl https://raw.githubusercontent.com/MichaelBurgstaller/linux_dot_files/master/.vimrc -o .vimrc -s

https://raw.githubusercontent.com/MichaelBurgstaller/linux_dot_files/master/.Xdefaults -o .Xdefaults -s

cd /usr/lib/urxvt/perl

curl https://raw.githubusercontent.com/MichaelBurgstaller/linux_dot_files/master/urxvt/clipboard -o clipboard -s

cd ~/.config/i3

curl https://raw.githubusercontent.com/MichaelBurgstaller/linux_dot_files/master/i3/config -o config -s

echo "Installing vim extensions\n"

mkdir -p ~/.vim/autoload && mkdir -p ~/.vim/bundle

mkdir ~/Downloads && cd ~/Downloads
git clone https://aur.archlinux.org/vim-pathogen.git
cd vim-pathogen
makepkg -si

cd ~/.vim/bundle

git clone https://github.com/yggdroot/indentline
git clone https://github.com/scrooloose/nerdcommenter
git clone https://vimawesome.com/plugin/nerdtree-red
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/sheerun/vim-polyglot

echo "Done\n"
