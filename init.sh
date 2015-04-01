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

echo "Creating symlinks"

# Symlink the tmux.conf
if [ -L $HOME/.tmux.conf ]; then
  echo 'tmux.conf symlink exists, removing'
  rm $HOME/.tmux.conf
fi
ln -s .dotfiles/tmux.conf $HOME/.tmux.conf
echo "creating symlink to $HOME/.tmux.conf"

# Symlink the .vim folder
if [ -L $HOME/.vim ]; then
  echo 'vim symlink exists, removing'
  rm $HOME/.vim
fi
ln -s .dotfiles/vim $HOME/.vim
echo "creating symlink to $HOME/.vim"

# Symlink the .vimrc folder
if [ -L $HOME/.vimrc ]; then
  echo 'vim symlink exists, removing'
  rm $HOME/.vimrc
fi
ln -s .dotfiles/vimrc $HOME/.vimrc
echo "creating symlink to $HOME/.vimrc"

# Symlink the .zshrc folder
if [ -L $HOME/.zshrc ]; then
  echo 'zshrc symlink exists, removing'
  rm $HOME/.zshrc
fi
ln -s .dotfiles/zshrc $HOME/.zshrc
echo "creating symlink to $HOME/.zshrc"

echo "Okay, done."

