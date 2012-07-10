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
syntax enable
let g:solarized_termcolors=256
colorscheme solarized

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

"SWP DIR"
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

"Sane Movement with wrap"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"Enable mouse support"
set mouse=a

"Copy to system clipboard"
set clipboard=unnamed
