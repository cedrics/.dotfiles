set autoread

set shell=zsh

"BUNDLE"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/usr/local/opt/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'

" language
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/vim-handlebars'
Plugin 'tpope/vim-rails'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'isRuslan/vim-es6'
Plugin 'mtscout6/vim-cjsx'

Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'

call vundle#end()

"Allow working with buffers"
set hidden

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

"Set leader to comma"
let mapleader = ","

"Linenumbers"
set number

"Show trailing white spaces"
set list listchars=tab:\ \ ,trail:·

"Open FZF using Ctrl-P
nnoremap <c-p> :GFiles<cr>

"Grep using ag
set grepprg=ag\ --nogroup\ --nocolor
let g:ackprg = 'ag --vimgrep'

"Colorscheme"
syntax enable
colorscheme wombat256

"Autoindentation"
filetype indent plugin on

"Automatically reload vimrc when it is changed"
autocmd! bufwritepost vimrc source ~/.dotfiles/vimrc

"Soft Tabs"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Fix backspace key"
set backspace=2
fixdel

"Remove GUI"
if has("gui_running")
    set guioptions=egmrt
endif

"SWP DIR"
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

"Sane Movement with wrap"
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

"Enable mouse support"
set mouse=a

" Powerline config
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

au BufRead,BufNewFile *.jbuilder set filetype=ruby

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%100v.\+/
