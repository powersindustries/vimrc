" ----------------------------------------------
" PLUGIN MANAGER.
" ----------------------------------------------
" call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ggreer/the_silver_searcher'
Plug 'ixru/nvim-markdown'
Plug 'olimorris/onedarkpro.nvim'

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
set encoding=UTF-8
set number
set wrap
set mouse=a

" Tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

vnoremap <C-C> "+y
" nnoremap <C-y > "+y

" Autocomplete brackets.
inoremap { {}<Esc>ha


" ----------------------------------------------
" PLUGIN CONFIG.
" ----------------------------------------------

" NERDTree Settings.
nnoremap <tab> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
set splitright

" Markdown editor remapping.
map <C-8> <Plug>Markdown_Fold 

" Find in file.
nnoremap <C-f> :/

" Tagbar toggle.
nmap <F8> :TagbarToggle<CR>

" Ctrl P Fuzzy Finding.
nnoremap <C-o> :CtrlP<CR>

" Coc Settings.
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" One Dark Pro Theme.
colorscheme onedark
