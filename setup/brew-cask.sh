#!/usr/bin/env bash
source ~/.cnc/setup/setup_func.sh

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
require_cask alfred
require_cask dropbox
require_cask firefox 
require_cask evernote 
require_cask iterm2
require_cask skype
require_cask slack
require_cask sublime-text
require_cask virtualbox
require_cask vlc
require_cask android-file-transfer
require_cask beatport-pro
require_cask dashlane
require_cask calibre
require_cask flux 
require_cask squidman 
require_cask google-chrome 
require_cask the-unarchiver
require_cask visual-studio-code
require_cask xld
require_cask sourcetree 

# Quicklook plugins
require_cask qlcolorcode
require_cask qlstephen
require_cask qlmarkdown
require_cask quicklook-json
require_cask qlprettypatch
require_cask quicklook-csv
require_cask betterzipql
require_cask qlimagesize
require_cask webpquicklook
require_cask suspicious-package
