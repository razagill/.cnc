#############################################################################
#### Generic configuration
#############################################################################

# Source the dotfiles (order matters)
for DOTFILE in ~/.cnc/homedir/.{function,path,vars,alias,alias.local,grep,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Clean up
unset DOTFILE

# Export
export CNC_DIR

export PATH="$HOME/.cargo/bin:$PATH"
