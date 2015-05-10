# My Dotfiles

I created these files by cobbling together practices from some other folks on the web. Use at your own peril 💀

There's still a lot I want to do with these, especially setting up a script to safely and automatically run most of this. But this is a start. At the moment, this is probably most useful for setting up a new machine.

## How to Use

1. On a new Mac, make sure the following is installed before proceeding:

  - XCode or Command Line Tools

1. Open Terminal and install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`

  What's included (the noteworthy stuff):

  - Caskroom
  - Node
  - Fish (shell)

1. Instal utilities and apps with Homebrew: `sh brew.sh`

  Some of the apps:

  - Atom
  - Dash
  - Dropbox
  - Slack
  - Vagrant
  - VirtualBox

1. Install some global NPM packages: `sh npm.sh`

  - Bower
  - Grunt
  - Gulp
  - Yeoman

1. Run OS X defaults script: `sh osx-defaults.sh`

  **Note:** This kind of stuff is highly personal. If you're cloning or forking this repo, you should read through the script before running.

1. Configure the Terminal

  - Change default shell to Fish: `chsh -s /usr/local/bin/fish`
  - Import custom Terminal theme

1. Symlinks (TODO)
