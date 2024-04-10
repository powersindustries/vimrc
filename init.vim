" ----------------------------------------------
" PLUGIN MANAGER.
" ----------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ggreer/the_silver_searcher'
Plug 'ixru/nvim-markdown'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'navarasu/onedark.nvim'

" lsp zero
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

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

" Removes ~ character from empty lines in sidebar.
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾

vnoremap <C-C> "+y

" Autocomplete brackets.
inoremap { {}<Esc>ha


" ----------------------------------------------
" PLUGIN CONFIG.
" ----------------------------------------------

" Markdown editor remapping.
map <C-8> <Plug>Markdown_Fold 

" Find in file.
nnoremap <C-f> :/

" Find in file.
nnoremap <C-t> :tabnew<CR>

" Go to definition.
nnoremap <F12> <C-]>

" Go back to previous position.
nnoremap <C-_> <C-o>

" Explore Mode.
nmap <C-e> :Explore<CR>

" Tagbar toggle.
nmap <F8> :TagbarToggle<CR>

" Ctrl P Fuzzy Finding.
nnoremap <C-,> :CtrlP<CR>

" Treesitter Settings.
lua require('config/treesitter')

" lsp zero Settings.
lua require('config/lsp')

" One Dark Pro
colorscheme onedark
