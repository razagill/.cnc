#!/usr/bin/env bash
# Check for Homebrew and install if we don't have it
source ~/.cnc/setup/setup_func.sh

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew update
brew upgrade

# Install packages
require_brew zsh
require_brew antigen 
require_brew coreutils 
require_brew git 
require_brew tree 
require_brew trash 
require_brew yarn
require_brew wget 
require_brew nvm 
require_brew python 
require_brew tmux 
require_brew ssh-copy-id 
require_brew fasd --with-default-names 
require_brew gnu-sed --with-default-names
require_brew grep --with-default-names
require_brew neovim
