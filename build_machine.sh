#!/bin/bash

# This script builds a new machine.

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install homebrew packages
brew install vim git ffmpeg tmux reattach-to-user-namespace ctags

# Install homebrew-cask
brew install caskroom/cask/brew-cask

# Install homebrew-cask packages
cask_packages=( vagrant virtualbox adium vlc spotify google-chrome google-hangouts firefox alfred dropbox)
for app in "${cask_packages[@]}"
do
  brew cask install --appdir=/Applications $app
done
