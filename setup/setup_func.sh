#!/usr/bin/env bash
source ~/.cnc/setup/setup_echos.sh

function require_cask() {
    running "brew cask $1"
    brew cask list $1 > /dev/null 2>&1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        action "brew cask install $1 $2"
        brew cask install $1
        if [[ $? != 0 ]]; then
            error "failed to install $1! aborting..."
            # exit -1
        fi
    fi
    ok
}

function require_brew() {
    running "brew $1 $2"
    brew list $1 > /dev/null 2>&1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        action "brew install $1 $2"
        brew install $1 $2
        if [[ $? != 0 ]]; then
            error "failed to install $1! aborting..."
            # exit -1
        fi
    fi
    ok
}

function create_symlinks() {
	running "Creating symlinks"
	ln -sfv ~/.cnc/system/.profile ~
	ln -sfv ~/.cnc/system/.zprofile ~
	ln -sfv ~/.cnc/system/.zshrc ~

	for DOTFILE in ~/.cnc/homedir/.{function,path,vars,alias,grep,fasd,custom,tmux.conf,vimrc};do
		ln -sfv $DOTFILE ~
	done
}

function set_macos_defaults() {
	running "Setting macOS defaults"
	. ~/.cnc/setup/setup_macos_defaults.sh
}