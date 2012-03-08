set autoread

"Allow working with buffers"
set hidden

"Set leader to comma"
let mapleader = ","

"Linenumbers"
set number

"Show trailing white spaces"
set list listchars=tab:\ \ ,trail:·

"Colorscheme"
colorscheme railscasts

"Autoindentation"
filetype indent plugin on

"Automatically reload vimrc when it is changed"
autocmd! bufwritepost vimrc source ~/.dotfiles/vimrc

"Load Pathogen"
call pathogen#infect()

"Soft Tabs"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Remove GUI"
if has("gui_running")
    set guioptions=egmrt
endif

"Hotkeys"
map <M-t> :CommandTFlush:CommandT<CR>
