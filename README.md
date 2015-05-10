# ⚡︎ .dotfiles & new system checklist

I created these files by cobbling together practices from some other folks on the web. Use at your own peril

There's still a lot I want to do with these, especially setting up a script to safely and automatically run most of this. But this is a start. At the moment, this is probably most useful for setting up a new machine.

## Checklist

### 1. XCode / Command Line Tools

On a new Mac, make sure the following is installed before proceeding:

- XCode or Command Line Tools

### 2. Secure Git(Hub) access

- Generate new SSH key

### 3. Install Homebrew

Open Terminal and install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`

What's included (the noteworthy stuff):

- Caskroom
- Node
- Fish (shell)

### 4. Instal utilities and apps (using Homebrew & Caskroom)

Run: `sh brew.sh`

- Atom
- Dash
- Dropbox
- Slack
- Vagrant
- VirtualBox
- etc.

### 5. Install NPM packages

Install global NPM packages: `sh npm.sh`

  - Bower
  - Grunt
  - Gulp
  - Yeoman

### 6. Run OS X defaults script

Run: `sh osx-defaults.sh`

**Note:** This kind of stuff is highly personal. If you're cloning or forking this repo, you should read through the script before running.

### 7. Setup Fish

I like Fish, you may not. I think it makes life easier, but then again, I'm just a designer :/

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
