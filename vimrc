set autoread

"Automatically reload vimrc when it is changed"
autocmd! bufwritepost vimrc source ~/.dotfiles/vimrc

"Load Pathogen"
call pathogen#infect()
