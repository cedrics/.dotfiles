tmux-rails(){
  RAILS_PATH="$PWD"
  SESSION_NAME="${PWD##*/}"

  tmux new-session -s $SESSION_NAME -n 'editor' -d
  tmux new-window -t $SESSION_NAME:2 -n 'server'
  tmux new-window -t $SESSION_NAME:3 -n 'console'

  tmux send-keys -t $SESSION_NAME:1 "cd $RAILS_PATH && vim ." C-m
  tmux send-keys -t $SESSION_NAME:2 'rbenv exec rails s' C-m
  tmux send-keys -t $SESSION_NAME:3 'rbenv exec rails c' C-m

  tmux select-window -t $SESSION_NAME:1

  tmux -2 attach-session -t $SESSION_NAME
}
