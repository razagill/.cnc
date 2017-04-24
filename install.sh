#!/usr/bin/env bash
source ~/.cnc/setup/setup_func.sh
export $CNC_DIR="~/.cnc"

bot "Setting up your Mac via Command & Control"

bot "Creating symlinks..."
#Symlinks 
ln -sfv ~/.cnc/system/.profile ~
ln -sfv ~/.cnc/system/.zprofile ~
ln -sfv ~/.cnc/system/.zshrc ~


for DOTFILE in ~/.cnc/homedir/.{function,path,vars,alias,grep,fasd,custom}; do
  ln -sfv $DOTFILE ~
done

# # Package managers & packages
# bot "Installing brew packages..."

# . ~/.cnc/setup/brew.sh
# . ~/.cnc/setup/brew-cask.sh


# bot "Setting zsh as the default shell"
# # Set Zsh as the default shell
# chsh -s $(which zsh)

# bot "Setting up macOS defaults..."
# . ~/.cnc/macos/defaults.sh

bot "All done, please restart terminal/machine"
