#!/bin/bash

OH_MY_ZSH_DIR=$HOME/.oh-my-zsh

if [ ! -d $HOME/.dotfiles ]; then
  echo "Dotfiles do not exist."
  cd $HOME
  git clone https://github.com/zachseifts/dotfiles.git .dotfiles
else
  echo "Dotfiles exist, pulling in changes"
  cd $HOME/.dotfiles
  git pull
fi

cd $HOME/.dotfiles
git submodule update --init --recursive

if [ -d $OH_MY_ZSH_DIR ]; then
  cd $OH_MY_ZSH_DIR
  git pull
  cd $HOME
else
  echo "Checking out oh-my-zsh"
  cd $HOME
  git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
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

