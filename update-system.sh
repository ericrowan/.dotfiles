#!/bin/bash

# update and clean up homebrew packages
echo '------------------------------------'
echo 'Updating and cleaning up Homebrew...'
echo '------------------------------------'
brew update
brew upgrade --all
brew prune
brew doctor

# update and cleanup caskroom packages
echo '---------------------------------------------'
echo 'Updating and cleaning up Caskroom packages...'
echo '---------------------------------------------'
brew cask cleanup
brew cask update
brew cask doctor

# update npm packages
echo '---------------'
echo 'Updating npm...'
echo '---------------'
npm update -g

# update gems
echo '----------------'
echo 'Updating gems...'
echo '----------------'
gem update --system

# update Homestead
cd ~/projects/Homestead ; git pull

# finished
echo '----------------------'
echo '*** SYSTEM UPDATED ***'
echo '----------------------'
