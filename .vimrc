set termguicolors
colorscheme catppuccin_macchiato
syntax on

set nu
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent

set nohlsearch
set incsearch

set scrolloff=8
set signcolumn=no
set cursorline
set cursorlineopt=number

let mapleader = ' '

vnoremap <PageDown> :m '>+1<CR>gv=gv
vnoremap <PageUp> :m '<-2<CR>gv=gv

noremap <Up> gk
noremap <Down> gj

noremap J mzJ`z

noremap o o<Esc>
noremap O O<Esc>

noremap Q <nop>
