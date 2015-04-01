#!/bin/bash

# This script builds a new machine.

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \ </dev/null
brew doctor

# Install homebrew packages
brew install vim git ffmpeg tmux reattach-to-user-namespace ctags

# Install homebrew-cask
brew install caskroom/cask/brew-cask

# Install homebrew-cask packages
cask_packages=( adium alfred dropbox firefox google-chrome google-hangouts iterm2 spotify vagrant virtualbox vlc )
for app in "${cask_packages[@]}"
do
  brew cask install --appdir=/Applications $app
done
