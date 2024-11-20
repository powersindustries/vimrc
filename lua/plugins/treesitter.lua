return {
    'nvim-treesitter/nvim-treesitter',
    built = ':TSUpdate',
    config = function()
        require("nvim-treesitter.configs").setup({

            ensure_installed = {
                "lua",
                "c",
                "vim",
                "vimdoc",
                "typescript",
                "python"
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
