" change leader from \ to ,
let mapleader = ","

" clipboard
set clipboard+=unnamedplus

" line number
set number
set relativenumber

" tabs to space
set tabstop=4
set shiftwidth=4
set expandtab

" scroll
set scrolloff=8

lua require('plugins')
" lua require('lsp')
lua require('keymaps')
" lua require('cmp')
runtime coc.vim


" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set background=dark
" colorscheme solarized
set termguicolors
set background=dark
colorscheme solarized
