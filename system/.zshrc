# Setting the antigen config file
source /usr/local/share/antigen/antigen.zsh

source /usr/local/opt/nvm/nvm.sh
export LC_ALL=en_US.UTF-8
# Install plugings
antigen bundle git
antigen bundle command-not-found
antigen bundle ssh-agent

#antigen theme eendroroy/alien alien
# Tell Antigen that you're done.
antigen apply

#autoload zsh vars
autoload -U colors
colors

#change prompt after zsh is loaded
source ~/.cnc/system/.prompt

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

# Customize plugins
#bindkey '^ ' autosuggest-accept

# zle config
#bindkey -v					#set default mode to vim
#bindkey -s "\C-r" "\eqhh --\n"
bindkey -s "\C-r" "\eqhh --\n"

#z config
. `brew --prefix`/etc/profile.d/z.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
