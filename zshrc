# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
export DOTFILES=~/.dotfiles

## Ctrl+W stops at /
autoload -U select-word-style
select-word-style bash

source $DOTFILES/zsh/deps.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR=nvim

alias vim=/Users/cedric/.local/bin/lvim
alias be="bundle exec"
alias git=hub

export GOPATH=~/projects/go
export PATH=$GOPATH/bin:$PATH
export PATH=~/.bin:$PATH
export PATH=node_modules/.bin:$PATH

eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(goenv init -)"

bindkey -e

## History file configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000


## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

## Require additional files
for command in $DOTFILES/zsh/commands/*; do
  source "$command"
done



# pnpm
export PNPM_HOME="/Users/cedric/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
