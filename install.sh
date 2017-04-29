#!/usr/bin/env bash
source ~/.cnc/setup/setup_func.sh
export $CNC_DIR="~/.cnc"


bot "Setting up your Mac via Command & Control"
# Creating home directory symlinks
create_symlinks

# Package managers & packages
bot "Installing brew packages..."

. ~/.cnc/setup/brew.sh
. ~/.cnc/setup/brew-cask.sh

# Set Zsh as the default shell
bot "Setting zsh as the default shell"
chsh -s $(which zsh)

bot "Setting up macOS defaults..."
set_macos_defaults

bot "All done, please restart terminal/machine"
