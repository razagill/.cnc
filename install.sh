#!/usr/bin/env bash

echo "Setting up your Mac via Command & Control"

export CNC_DIR="~/.cnc"

#Symlinks 
ln -sfv "$CNC_DIR/runcom/.bash_profile" ~
ln -sfv "$CNC_DIR/runcom/.inputrc" ~
ln -sfv "$CNC_DIR/runcom/.gemrc" ~
ln -sfv "$CNC_DIR/git/.gitconfig" ~
ln -sfv "$CNC_DIR/git/.gitignore_global" ~

# Package managers & packages
. "$CNC_DIR/install/brew.sh"
. "$CNC_DIR/install/brew-cask.sh"
