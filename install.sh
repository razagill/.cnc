#!/usr/bin/env bash

echo "Setting up your Mac via Command & Control"

export CNC_DIR="~/.cnc"

#Symlinks 
ln -sfv "$CNC_DIR/system/.profile" ~
ln -sfv "$CNC_DIR/system/.zprofile" ~
ln -sfv "$CNC_DIR/system/.gitignore" ~
ln -sfv "$CNC_DIR/system/.zshrc" ~

# Package managers & packages
. "$CNC_DIR/install/brew.sh"
. "$CNC_DIR/install/brew-cask.sh"
