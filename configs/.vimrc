set number
set relativenumber
set tabstop=4
set autoindent
set shiftwidth=4
set nowrap
colorscheme elflord

set nocompatible
filetype off

" Set the runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
" call vundle#begin()

" Place your plugin configurations here
" Plugin 'junegunn/fzf'
" Plugin 'nvim-treesitter/nvim-treesitter'
" Plugin 'mattn/emmet-vim'
" End Vundle
" call vundle#end()
filetype plugin indent on

let mapleader = "\<Space>"
" Map the <Leader>f key combination to open FZF for file searching
nnoremap <Leader>f :FZF<CR>
" Map the <Leader>b key combination to open FZF for buffer searching
nnoremap <Leader>b :Buffers<CR>
" Map the <Leader>g key combination to open FZF for git file searching
nnoremap <Leader>g :GFiles<CR>


syntax enable
set nocompatible
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
