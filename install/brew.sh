# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew update
brew upgrade

# Install packages
apps=(
	coreutils
	git
	tree
	trash
	wget
	nvm
	python
	tmux
	ssh-copy-id
	fasd
	gnu-sed --with-default-names
	grep --with-default-names
)

brew install "${apps[@]}"
