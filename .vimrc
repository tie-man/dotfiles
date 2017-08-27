set nu
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set showmatch
set hidden
set nocompatible
set noerrorbells
set encoding=utf-8
set showcmd
set laststatus=2
set hlsearch

syntax enable
filetype on
filetype plugin on

execute pathogen#infect()
set background=dark
colorscheme pablo
set t_Co=256

"noremap <up> <C-W>+
"noremap <down> <C-W>-
"noremap <left> 3<C-W><
"noremap <right> 3<C-W>>

"c++ macros
let @h = 'o#include <>ha'
let @d = 'o#define '
let @s = 'ostruct x {o} ;k0Ws'
let @f = 'ofor(int i=0; i<n; i++) {o}kWr'

"nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"lightline
let g:lightline = {
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [	'fugitive', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component': {
\    'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
\ },
\ 'component_visible_condition': {
\    'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
\ }
\ }

"rainbow
let g:rainbow_active = 1
