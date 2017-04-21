# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
	alfred
	dropbox
	firefox
	evernote
	iterm2
	skype
	slack
	sublime-text3
	virtualbox
	vlc
	android-file-transfer
	beatport-pro
	dashlane
	calibre
	flux
	squidman
	google-chrome
	the-unarchiver
	visual-studio-code
	xld
	sourcetree
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
