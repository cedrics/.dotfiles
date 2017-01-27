set -g -x PATH /usr/local/bin $PATH

source ~/.config/fish/alias.fish

# Configure rebenv
status --is-interactive; and source (rbenv init -|psub)
