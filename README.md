# 👽 .dotfiles & new system checklist

I created these files by cobbling together practices from some other folks on the web. Use at your own peril. At some point it'd be cool to set this up to be run automatically. This will do for now.

## Checklist

### 1. XCode / Command Line Tools

On a new Mac, make sure the following is installed before proceeding:

- XCode or Command Line Tools

### 2. Secure Git(Hub/Lab) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)

### 3. Install Homebrew

Open Terminal and install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`

*Note: I had to run this several times in OS X 10.11.1 for some reason.*

### 4. Instal dependencies and apps

#### Homebrew & Caskroom

1. Clone this repo into your home directory.
2. Run: `sh brew.sh`. What's included (the noteworthy stuff):

- Homebrew dependencies
  - Caskroom
  - Node
  - Fish (shell)

- Apps via Caskroom (most symlink to ~/Applications instead of /Applications)
  - Atom
  - Dash
  - Dropbox
  - Slack
  - Vagrant
  - VirtualBox
  - etc.

#### npm

Run: `sh npm.sh`

  - Bower
  - Grunt
  - Gulp
  - Yeoman

### 6. Run OS X defaults script

Run: `sh osx-defaults.sh`

**Note:** This kind of stuff is highly personal. If you're cloning or forking this repo, you should read through the script before running.

### 7. Setup Fish

I like Fish, you may not. That doesn't make you a bad person.

- Change default shell to Fish: `chsh -s /usr/local/bin/fish`
- Import custom Terminal theme

### 8. Configure symlinks

Eventually I'd like for this to happen automatically. For the time being, here's how to do it:

For the following files, run: `ln -s [original/path] ~/`

- .gitconfig
- .gitignore
- brew.sh
- npm.sh
- osx-defaults.sh

For the Fish config, run: `ln -s ln -s /Users/[user]/.dotfiles/.config/fish/config.fish /Users/[user]/.config/fish`
