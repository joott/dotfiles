set termguicolors
syntax on

set nu
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent
set autoindent

set nohlsearch
set incsearch

set scrolloff=8
set signcolumn=no
set cursorline
set cursorlineopt=number

set ignorecase
set smartcase

let mapleader = ' '

vnoremap <PageDown> :m '>+1<CR>gv=gv
vnoremap <PageUp> :m '<-2<CR>gv=gv

noremap <Up> gk
noremap <Down> gj

noremap J mzJ`z

noremap o o<Esc>
noremap O O<Esc>

call plug#begin()

" List your plugins here
Plug 'dylanaraps/wal.vim'

call plug#end()

colorscheme wal
