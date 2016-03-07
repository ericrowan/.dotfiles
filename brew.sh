#!/bin/sh

# Make sure we’re using the latest Homebrew

brew update

# Upgrade any already-installed formulae

brew upgrade --all

# Install common packages

brew install 'caskroom/cask/brew-cask'
brew install 'fish'
brew install 'git'
brew install 'mongodb'
brew install 'node'
brew install 'ruby'
brew install 'tree'

# Install apps I frequently use

brew cask install 'appcleaner'
brew cask install 'atom'
brew cask install 'brackets'
brew cask install 'colorpicker-skalacolor'
brew cask install 'dash'
brew cask install 'dashlane'
brew cask install 'dropbox'
brew cask install 'firefox'
brew cask install 'google-drive'
brew cask install 'github-desktop'
brew cask install 'google-chrome'
brew cask install 'google-hangouts'
brew cask install 'macdown'
brew cask install 'ngrok'
brew cask install 'opera'
brew cask install 'sequel-pro'
brew cask install 'skype'
brew cask install 'slack'
brew cask install 'spotify'
brew cask install 'tcl'
brew cask install 'vagrant'
brew cask install 'virtualbox'
brew cask install 'vlc'

# Maintenance

brew cleanup
brew doctor
