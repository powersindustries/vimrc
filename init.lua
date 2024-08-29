-- ----------------------------------------------
-- EDITOR.
-- ----------------------------------------------
-- Find in file.
vim.api.nvim_set_keymap('n', '<C-f>', ':/', { noremap = true })

-- Open a new tab.
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })

-- Go to definition.
vim.api.nvim_set_keymap('n', '<F12>', '<C-]>', { noremap = true })

-- Go back to previous position.
vim.api.nvim_set_keymap('n', '<C-_>', '<C-o>', { noremap = true })

-- Explore Mode.
vim.api.nvim_set_keymap('n', '<C-e>', ':Explore<CR>', { noremap = true })

-- Clipboard copy.
vim.api.nvim_set_keymap('v', '<C-C>', '"+y', { noremap = true })

-- Autocomplete brackets.
vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', { noremap = true })

-- Removes ~ character from empty lines in sidebar.
vim.o.fillchars = "fold: ,vert:│,eob: ,msgsep:‾"

-- Color settings.
vim.opt.termguicolors = true
