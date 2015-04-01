#!/bin/bash

# This script builds a new machine.

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install homebrew-cask
brew install caskroom/cask/brew-cask

# Install homebrew-cask packages
cask_packages=( vagrant adium vlc spotify google-chrome google-hangouts firefox )
for app in "${cask_packages[@]}"
do:
  brew cask install --appdir=/Applications $app
done
