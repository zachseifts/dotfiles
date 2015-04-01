#!/bin/bash

# This script sets up the terminal environment.

# oh_my_zsh directory
DOTFILES_DIR=$HOME/.dotfiles
OH_MY_ZSH_DIR=$HOME/.oh-my-zsh

# Update the dotfiles repo and submodules
cd $DOTFILES_DIR
git pull
git submodule init
git submodule update

# Install oh-my-zsh if it's not already enabled
if [ ! -d $OH_MY_ZSH_DIR ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git $OH_MY_ZSH_DIR
fi
cd $HOME

# Create the symlinks to config files
links=( tmux.conf vim vimrc zshrc )
for link in "${links[@]}"
do
  if [ ! -L $HOME/.$link ]; then
    ln -s $DOTFILES_DIR/$link $HOME/.$link
  fi
done
