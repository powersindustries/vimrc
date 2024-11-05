vim.g.NERDTreeShowHidden = 1
vim.g.airline_powerline_fonts = 1

-- vim.opt.guifont = "JetBrainsMono\\ NFM:h10"
vim.opt.guifont = "JetBrainsMono\\ :h22"

-- Expland Nerdtree.
vim.api.nvim_set_keymap('n', '<C-e>', ':NERDTreeFind<CR>', { noremap = true })
