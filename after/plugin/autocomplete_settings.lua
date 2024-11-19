local cmp = require'cmp'

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<TAB>'] = cmp.mapping.confirm(
            {
                behavior = cmp.ConfirmBehavior.Insert,
                select = true
            }),
    }),
    sources = cmp.config.sources({
        { name = 'luasnip' }, -- For luasnip users.
    }, {
            { name = 'buffer' },
        })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
            { name = 'cmdline' }
        }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.

-- ['<YOUR_LSP_SERVER>'].setup {
--     capabilities = capabilities
-- }

-- "clangd",
-- "lua_ls",
-- "cssls",
-- "eslint",
-- "html",
-- "tsp_server",
-- "tsp_server",
