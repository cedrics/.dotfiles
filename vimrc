set autoread

set shell=zsh

"BUNDLE"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
Plugin 'nono/vim-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-rails'
Plugin 'wting/rust.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'elixir-lang/vim-elixir'

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

"ctrl-p"
let g:ctrlp_map = '<c-p>'

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

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
