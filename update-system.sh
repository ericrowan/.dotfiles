#!/bin/bash

# update and clean up homebrew packages
echo 'Updating and cleaning up Homebrew ...'
brew update
brew upgrade --all
brew prune
brew doctor

# update and cleanup caskroom packages
echo 'Updating and cleaning up Caskroom packages ...'
brew cask cleanup
brew cask update
brew cask doctor

# update npm packages
echo 'Updating npm ...'
npm update -g

# update gems
echo 'Updating gems ...'
gem update --system

# update Homestead
cd ~/projects/Homestead ; git pull

# finished
osascript -e 'display notification "Local dev environment cleaned and/or updated." with title "System Updated"'
