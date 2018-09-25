#!/usr/bin/env bash

echo "Back-up exisitng dotfiles to ~/.dotfiles_old"

rm -rf ~/.dotfiles_old
mkdir ~/.dotfiles_old
mkdir -p ~/.config/nvim/

mv ~/.editrc ~/.dotfiles_old
mv ~/.gemrc ~/.dotfiles_old
mv ~/.gitconfig ~/.dotfiles_old
mv ~/.gitignore ~/.dotfiles_old
mv ~/.gvimrc ~/.dotfiles_old
mv ~/.inputrc ~/.dotfiles_old
# mv ~/.pentadactylrc ~/.dotfiles_old
mv ~/.tmux.conf ~/.dotfiles_old
mv ~/.vim ~/.dotfiles_old
mv ~/.vimrc ~/.dotfiles_old
mv ~/.todo.cfg ~/.dotfiles_old
mv ~/.zshrc ~/.dotfiles_old
mv ~/.laptop.local ~/.dotfiles_old

echo "Symlinking files"
ln -s ~/src/dotfiles/editrc ~/.editrc
ln -s ~/src/dotfiles/gemrc ~/.gemrc
ln -s ~/src/dotfiles/gitconfig ~/.gitconfig
ln -s ~/src/dotfiles/gitignore ~/.gitignore
ln -s ~/src/dotfiles/gvimrc ~/.gvimrc
ln -s ~/src/dotfiles/inputrc ~/.inputrc
# ln -s ~/src/dotfiles/pentadactylrc ~/.pentadactylrc
ln -s ~/src/dotfiles/vim ~/.vim
ln -s ~/src/dotfiles/vimrc ~/.vimrc
# ln -s ~/src/dotfiles/vimrc ~/.nvimrc
ln -s ~/src/dotfiles/tmux ~/.tmux.conf
# ln -s ~/src/dotfiles/todo.cfg ~/.todo.cfg
ln -s ~/src/dotfiles/zshrc ~/.zshrc
# ln -s ~/src/dotfiles/laptop.local ~/.laptop.local
ln -s ~/src/dotfiles/nvim.vim ~/.config/nvim/init.vim

echo "Installing vim-plug - package manager for vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing exa"
brew install exa

echo "Installing zsh powerlevel theme"
mkdir -p ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "All done."
