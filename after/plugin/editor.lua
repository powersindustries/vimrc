-- ----------------------------------------------
-- GENERAL EDITOR CONFIG.
-- ----------------------------------------------

-- Compatibility vim only.
vim.o.compatible = false

-- Status Bar on bottom screen.
vim.o.laststatus = 2

-- Leader key remap.
vim.g.mapleader = " "

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

-- Indents.
vim.o.autoindent = true
vim.o.smartindent = true

-- Searching.
vim.o.hlsearch = false
vim.o.incsearch = true

vim.opt.updatetime = 50