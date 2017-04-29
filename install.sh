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
. ~/.cnc/macos/defaults.sh

# Configure neovim
setup_neovim
bot "Please run :PlugInstall when starting neovim for the first time to install all plugins"

bot "All done, please restart terminal/machine"
