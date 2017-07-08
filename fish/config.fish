set -g -x PATH ~/.yarn/bin $PATH
set -g -x PATH /usr/local/bin $PATH
set -g -x PATH ~/.bin $PATH
set -g -x PATH (yarn global bin) $PATH
set -g -x PATH ~/.nodenv/bin $PATH

source ~/.config/fish/alias.fish
source ~/.config/fish/commands/p.fish

if test -d ~/.config/fish/local
  source (ls -d ~/.config/fish/local/*)
end

# Configure rebenv
status --is-interactive; and source (rbenv init -|psub)

# Prompt
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

# Setup nodenv
status --is-interactive; and source (nodenv init -|psub)
