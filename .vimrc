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
colorscheme elflord
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
