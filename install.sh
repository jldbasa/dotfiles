#!/usr/bin/env bash

#echo "Initializing submodules"
#git submodule update --init

echo "Back-up files to ~/.dotfiles_old"
mkdir ~/.dotfiles_old
mv ~/.editrc ~/.dotfiles_old
mv ~/.gemrc ~/.dotfiles_old
mv ~/.gitconfig ~/.dotfiles_old
mv ~/.gitignore ~/.dotfiles_old
mv ~/.gvimrc ~/.dotfiles_old
mv ~/.inputrc ~/.dotfiles_old
mv ~/.pentadactylrc ~/.dotfiles_old
mv ~/.tmux.conf ~/.dotfiles_old
mv ~/.vim ~/.vim ~/.dotfiles_old
mv ~/.vimrc ~/.vimrc ~/.dotfiles_old
mv ~/.todo.cfg ~/.vimrc ~/.dotfiles_old
mv ~/.zshrc ~/.dotfiles_old

echo "Symlinking files"
ln -s ~/src/dotfiles/editrc ~/.editrc
ln -s ~/src/dotfiles/gemrc ~/.gemrc
ln -s ~/src/dotfiles/gitconfig ~/.gitconfig
ln -s ~/src/dotfiles/gitignore ~/.gitignore
ln -s ~/src/dotfiles/gvimrc ~/.gvimrc
ln -s ~/src/dotfiles/inputrc ~/.inputrc
ln -s ~/src/dotfiles/pentadactylrc ~/.pentadactylrc
ln -s ~/src/dotfiles/vim ~/.vim
ln -s ~/src/dotfiles/vimrc ~/.vimrc
ln -s ~/src/dotfiles/tmux ~/.tmux.conf
ln -s ~/src/dotfiles/todo.cfg ~/.todo.cfg
ln -s ~/src/dotfiles/zshrc ~/.zshrc

#echo "Updating submodules"
#git submodule foreach git pull origin master --recurse-submodules

echo "All done."
