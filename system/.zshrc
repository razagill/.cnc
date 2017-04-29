# Setting the antigen config file
source /usr/local/share/antigen/antigen.zsh

source /usr/local/opt/nvm/nvm.sh

# Install plugings
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle command-not-found
antigen bundle tarruda/zsh-autosuggestions
antigen bundle ssh-agent

antigen theme eendroroy/alien alien
export PROMPT='
%(?.%K{$color0}%F{$color1}%f%k.%K{$color0}%F{$color1r}%f%k)%K{$color0}%F{$color2} %f%k%K{$color3}%F{$color0}%f%k%K{$color3}%F{$color4} %f%k%K{$color5}%F{$color3}%f%k%K{$color5}%F{$color6} %3~ %f%k%F{$color5}%K{$color7}%k%f%K{$color7}%F{$color9}`_vcs_info`%f%k%F{$color7}%f
%F{$color3}$(__ssh_client)%f%F{$color8}%B❱%b%f '

# Tell Antigen that you're done.
antigen apply


# load .nvmrc
function chpwd() {
  emulate -L zsh
  if [[ -f .nvmrc ]] then
    nvm use `cat .nvmrc`
  fi
}
[[ -f .nvmrc ]] && nvm use `cat .nvmrc`

# Customize to your needs...
unsetopt correct