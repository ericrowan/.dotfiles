#!/bin/sh

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install common packages
brew install 'caskroom/cask/brew-cask'
brew install 'fish'
brew install 'node'
brew install 'ruby'
brew install 'tree'

# Install apps I use all the time
brew cask install 'atom'
brew cask install 'brackets'
brew cask install 'dash'
brew cask install 'dashlane'
brew cask install 'dropbox'
brew cask install 'firefox'
brew cask install 'github'
brew cask install 'google-chrome'
brew cask install 'google-hangouts'
brew cask install 'mailbox'
brew cask install 'opera'
brew cask install 'rdio'
brew cask install 'sequel-pro'
brew cask install 'slack'
brew cask install 'vagrant'
brew cask install 'virtualbox'
brew cask install 'vlc'

# Maintenance
brew cleanup
brew doctor
