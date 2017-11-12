set autoread

set shell=/bin/bash

"BUNDLE"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/usr/local/opt/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" language
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'

Plug 'airblade/vim-gitgutter'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

Plug 'micha/vim-colors-solarized'

call plug#end()

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
set synmaxcol=200
set background=light
colorscheme solarized

"Autoindentation"
filetype indent plugin on

"Soft Tabs"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Fix backspace key"
set backspace=2

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

"Airline Config"
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
set laststatus=2

au BufRead,BufNewFile *.jbuilder set filetype=ruby

" Fix JS on sae
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'

autocmd! BufReadPost,BufWritePost * Neomake

let g:neoformat_enabled_javascript = ['prettier-eslint']
let g:neoformat_enabled_ruby = ['rubocop']

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

let g:deoplete#enable_at_startup = 1
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif
