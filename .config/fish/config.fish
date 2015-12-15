# NOTE: There is probably a sexier nicer way to do this, but until I figure that out I am manually unsetting here.
# Unsets PATH
set -g -x PATH

# This allows us to use Homebrew versions of things (like git) rather than the pre-installed or XCode installed versions.
# See http://blog.grayghostvisuals.com/git/how-to-keep-git-updated/ for reference.
set -g -x PATH $PATH /usr/local/bin

# Sets necessary PATH defaults
set -g -x PATH $PATH /usr/bin /bin /usr/sbin /usr/local/sbin /sbin



# Add Composer's global binaries to PATH
if test -z "$COMPOSER_BIN_PATH"
  set -gx COMPOSER_BIN_PATH $HOME/.composer/vendor/bin
end
set PATH $COMPOSER_BIN_PATH $PATH

# get composer path
if test -z "$COMPOSER_BIN"
  if type "composer.phar" > /dev/null
    set -gx COMPOSER_BIN (which composer.phar)
  else if type "composer" > /dev/null
    set -gx COMPOSER_BIN (which composer)
  else
    echo "FAILED to find Composer! Please install composer.phar to your PATH."
  end
end



# Setup my custom Fish prompt
set _fish_git_prompt_color_branch green

function fish_prompt
  set --erase fish_greeting
  printf '\n'
  printf '⚡︎ '
  set last_status $status
  printf '%s' (prompt_pwd)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showcolorhints true
  printf '%s ' (__fish_git_prompt)
end

# Aliases

## Shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias h='cd ~/'
alias c='clear'
alias ll='ls -al'

### Hide/show hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## Git commands
# alias log='git log'
# alias diff='git diff'
# alias branch='git branch'
# alias st='git status'
# alias fetch='git fetch'
# alias push='git push origin head'
# alias pull='git pull'
# alias fp='fetch && pull'
# alias gmm='git merge master'
# alias gmghp='git merge gh-pages'
# alias recent='git for-each-ref --sort=-committerdate refs/heads/'
# alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
# alias master='git co master'
# alias ghp='git co gh-pages'

## Build tools
# alias gd='grunt dist'
