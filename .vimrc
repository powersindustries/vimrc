" ----------------------------------------------
" PLUGIN MANAGER.
" ----------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/vim-markdown'

call plug#end()


" ----------------------------------------------
" GENERAL CONFIG.
" ----------------------------------------------

" Compatibility vim only.
set nocompatible

" Status Bar on bottom screen.
set laststatus=2

" Leader key remap.
let mapleader = " "

" General Config.
set encoding=utf-8
set number
set wrap
set mouse=a

" Tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" NERDTree Settings.
nnoremap <tab> :NERDTreeToggle<CR>

" Ctrl P Fuzzy Finding.
nnoremap <C-o> :CtrlP<CR>

" Find in file.
nnoremap <C-f> :/
