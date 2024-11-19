-- ----------------------------------------------
-- GENERAL EDITOR CONFIG.
-- ----------------------------------------------

-- Leader key remap.
vim.g.mapleader = " "


-- Compatibility vim only.
vim.o.compatible = false


-- Status Bar on bottom screen.
vim.o.laststatus = 2


-- General Config.
vim.o.encoding = "UTF-8"
vim.o.number = true
vim.o.wrap = true
vim.o.mouse = "a"


-- Tabs.
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = {'c', 'cpp,', 'h'},
    callback = function()
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
        vim.o.softtabstop = 2
    end,
})


-- Indents.
vim.o.autoindent = true
vim.o.smartindent = true


-- Searching.
vim.o.hlsearch = false
vim.o.incsearch = true

vim.opt.updatetime = 50


-- Find in file.
vim.api.nvim_set_keymap('n', '<C-f>', ':/', { noremap = true })

-- Open a new tab.
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })

-- Go to definition.
vim.api.nvim_set_keymap('n', '<F12>', '<C-]>', { noremap = true })

-- Go back to previous position.
vim.api.nvim_set_keymap('n', '<C-_>', '<C-o>', { noremap = true })

-- Clipboard copy.
vim.api.nvim_set_keymap('v', '<C-C>', '"+y', { noremap = true })

-- Autocomplete brackets.
vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', { noremap = true })

-- Removes ~ character from empty lines in sidebar.
vim.o.fillchars = "fold: ,vert:│,eob: ,msgsep:‾"
