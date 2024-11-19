vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself.
    use 'wbthomason/packer.nvim'


    -- Styling and coloriung.
    use 'navarasu/onedark.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'


    -- Navigation, finder, and nerdtree.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep'
        } }
    }
    use {'nvim-telescope/telescope-ui-select.nvim' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'preservim/nerdtree'

    -- LSP.
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Autocomplete.
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

end);
