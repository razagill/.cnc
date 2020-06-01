#!/bin/zsh
source $CNC_HOME/setup/echo_helper.sh

running "change default location of screenshots to $HOME/screenshots"
defaults write com.apple.screencapture location $HOME/screenshots

running "show path bar breadcrumbs in finder"
defaults write com.apple.finder ShowPathbar -bool true

running "show status bar in finder"
defaults write com.apple.finder ShowStatusBar -bool true
