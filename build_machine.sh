#!/bin/bash

# This script builds a new machine.

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install homebrew-cask
brew install caskroom/cask/brew-cask
