vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeQuitOnOpen = 1

-- Expland Nerdtree functionality.
local function toggle_nerd_tree()
    if vim.bo.filetype == "nerdtree" then
        vim.cmd("NERDTreeToggle")
    else
        vim.cmd("NERDTreeFind")
    end    
end


vim.keymap.set('n', '<C-e>', toggle_nerd_tree, { noremap = true, silent = true })
