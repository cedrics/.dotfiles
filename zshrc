export DOTFILES=~/.dotfiles

## Ctrl+W stops at /
autoload -U select-word-style
select-word-style bash

source $DOTFILES/zsh/deps.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR=nvim

alias vim=/opt/homebrew/bin/nvim
alias be="bundle exec"

eval "$(hub alias -s)"

export GOPATH=~/projects/go
export PATH=$GOPATH/bin:$PATH
export PATH=~/.bin:$PATH
export PATH=node_modules/.bin:../node_modules/.bin:$PATH

eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"

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

for command in $DOTFILES/zsh/completions/*; do
  source "$command"
done

# Add postgres CMD line tools
export PATH=/Applications/Postgres.app/Contents/Versions/14/bin:$PATH

# pnpm
export PNPM_HOME="/Users/cedric/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cedric/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cedric/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cedric/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cedric/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/cedric/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
