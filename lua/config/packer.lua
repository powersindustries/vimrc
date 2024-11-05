-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself.
    use 'wbthomason/packer.nvim'

    -- Editor.
    use 'tpope/vim-commentary'
    use 'godlygeek/tabular'

    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'


    -- Navigation and Finder.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep'
        } }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


    -- Styling.
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'navarasu/onedark.nvim'


    -- Autocomplete.
    use {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'}
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }


end);
