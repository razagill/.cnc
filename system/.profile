#############################################################################
#### Generic configuration
#############################################################################

CNC_DIR="~/.cnc"

# Source the dotfiles (order matters)
for DOTFILE in "$CNC_DIR"/homedir/.{function,path,vars,alias,grep,fasd,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Clean up
unset DOTFILE

# Export
export CNC_DIR