autoload -U ${fpath[1]}/*(:t)

source $CNC_HOME/shell/.alias

source $CNC_HOME/config/zsh/.zplugins

source $CNC_HOME/config/zsh/.zprompt


#### initialize shell utilites
##############################
. `brew --prefix`/etc/profile.d/z.sh
. `brew --prefix`/opt/asdf/asdf.sh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
