# 👽 .dotfiles & new system checklist

I created these files by cobbling together practices from some other folks on the web. Use at your own peril. At some point it'd be cool to set all this up to be run automatically. This will do for now.

**This is updated for OS X El Capitan.**

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
2. Run: `sh .dotfiles/brew.sh`. What's included (the noteworthy stuff):

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

Run: `sh .dotfiles/npm.sh`

  - Bower
  - Grunt
  - Gulp
  - Yeoman

### 6. Run OS X defaults script

Run: `sh .dotfiles/osx-defaults.sh`

**Note:** This kind of stuff is highly personal. If you're cloning or forking this repo, you should read through the script before running.

### 7. Setup Fish

I like Fish. I don't know if it's better than ZSH or anything else for that matter. It works for me at the moment.

- Change default shell to Fish: `chsh -s /usr/local/bin/fish`
- Import custom Terminal theme if you like, or use the one provided.

### 8. Configure symlinks

For the Fish config, run: `ln -s ln -s /Users/[user]/.dotfiles/.config/fish/config.fish /Users/[user]/.config/fish`

### 9. Helpful commands

I'd also like for this to happen automatically (daily). 

- `brew doctor` - Checks Homebrew for issues
- `brew update` - Updates any brew formulae
- `brew cask update --all` - Updates any cask apps
