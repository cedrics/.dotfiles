# Path to your oh-my-zsh configuration.
DOTFILES=$HOME/.dotfiles
ZSH=$HOME/.dotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cedric"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
PATH="/usr/local/bin:$PATH:$HOME/.bin:/usr/local/share/npm/bin:$HOME/Documents/Library/android-sdk/platform-tools"

source $DOTFILES/zsh/config.sh
source $DOTFILES/zsh/aliases.sh

source $(brew --prefix nvm)/nvm.sh

function auto_load_path {
  if [ -d "$1" ]; then
    for file in $1/* ; do
      source $file
    done
  fi
}

auto_load_path $DOTFILES/zsh/local
auto_load_path $DOTFILES/zsh/commands

# Disable auto title in tmux
DISABLE_AUTO_TITLE=true

alias tmux="tmux -2"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/csohrauer/.travis/travis.sh ] && source /Users/csohrauer/.travis/travis.sh
