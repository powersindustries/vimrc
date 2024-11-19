require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "clangd",
        "lua_ls",
        "cssls",
        "eslint",
        "html",
        "tsp_server",
        "tsp_server",
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})

            vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
        end,
    },
})

-- In-editor error handling.
-- vim.diagnostic.config({
--     virtual_text = false,
--     virtual_lines = false,
--     signs = false,
-- })
