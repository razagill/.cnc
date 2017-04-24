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