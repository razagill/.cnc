#!/bin/zsh
source $CNC_HOME/setup/echo_helper.sh

if test ! $(which brew); then
  err "Homebrew is not installed"
  exit 1
fi

brew bundle --file=$CNC_HOME/setup/Brewfile --no-lock -v
