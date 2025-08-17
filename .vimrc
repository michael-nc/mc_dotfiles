" Vim built-in settings
syntax on
set nomodeline
set encoding=utf-8
set number relativenumber
set fileformat=unix

set wrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab

set hlsearch
set incsearch
set showmatch
set smartcase


" Setup vim-plug if it doesn't exists
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" List your plugins here
Plug 'dense-analysis/ale'

call plug#end()

" ALE linters and fixers
let g:ale_linters = {
\   'python': ['ruff'],
\}

let g:ale_fixers = {
\   'python': ['ruff_format'],
\}

let g:ale_fix_on_save = 1
let g:ale_python_ruff_use_global = 0
