#!/bin/bash

# This script sets up the terminal environment.

# oh_my_zsh directory
DOTFILES_DIR=$HOME/.dotfiles
OH_MY_ZSH_DIR=$HOME/.oh-my-zsh
SSH_DIR=$HOME/.ssh

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

# Start to setup ssh config.
if [ ! -d $SSH_DIR/sockets ]; then
  mkdir -p $SSH_DIR/sockets
  chmod 700 $SSH_DIR/sockets
fi

# Symlink the ssh keys
keys=( ip-152010136208.lts.appstate.edu )
for key in "${keys[@]}"
do
  if [ ! -L $SSH_DIR/$key.pub ]; then
    ln -s $DOTFILES_DIR/keys/$key.pub $SSH_DIR/$key.pub
  fi
  
  if [ -f $HOME/Dropbox/keys/$key/id_rsa ]; then
    ln -s $HOME/Dropbox/keys/$key/id_rsa $SSH_DIR/$key
    chmod 600 $SSH_DIR/$key
  fi
done

# Symlink the ssh config file.
if [ ! -L $SSH_DIR/config ]; then
  ln -s $DOTFILES_DIR/ssh/config $SSH_DIR/config
fi
