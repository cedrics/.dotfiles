export DOTFILES=~/.dotfiles

## Ctrl+W stops at /
autoload -U select-word-style
select-word-style bash

source $DOTFILES/zsh/deps.zsh

export EDITOR=nvim

alias vim=nvim
alias be="bundle exec"
alias git=hub

eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(goenv init -)"

export GOPATH=~/projects/go
export PATH=$GOPATH/bin:$PATH
export PATH=~/.bin:$PATH

bindkey -e

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history
