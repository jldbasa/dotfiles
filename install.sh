#!/usr/bin/env bash

#echo "initializing submodules"
#git submodule init
#git submodule update

echo "Back-up files to ~/.dotfiles_old"
mkdir ~/.dotfiles_old
#rm ~/.vimrc
#rm ~/.vim
#rm ~/.gvimrc

mv ~/.zshrc ~/.dotfiles_old
mv ~/.gitconfig ~/.dotfiles_old
mv ~/.gitignore ~/.dotfiles_old
mv ~/.tmux.conf ~/.dotfiles_old

echo "Symlinking files"
#ln -s ~/Github/dotfiles/vimrc ~/.vimrc
#ln -s ~/Github/dotfiles/vim ~/.vim
#ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore
ln -s ~/Github/dotfiles/tmux ~/.tmux.conf

#echo "Updating submodules"
#git submodule foreach git pull origin master --recurse-submodules

echo "All done."
