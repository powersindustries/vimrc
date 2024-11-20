return {
    {
        "navarasu/onedark.nvim",
        lazy = false,
        name = "onedark",
        priority = 1000,
        opts = {
            style = 'deep'
        },
        config = function()
            require("onedark").setup({
                style = "deep", -- Choose between "dark", "darker", "cool", "deep", "warm", "warmer", "light"
            })

            vim.cmd.colorscheme "onedark"
            vim.opt.termguicolors = true
        end
    },
    {"vim-airline/vim-airline"},
    {"vim-airline/vim-airline-themes"},
}
