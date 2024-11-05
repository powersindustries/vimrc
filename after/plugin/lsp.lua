-- LSP Setup.
local lsp_zero = require('lsp-zero')

-- Default setup.
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Auto complete setup.
local cmp = require "cmp"

cmp.setup {
    sources = cmp.config.sources({
      { name = 'buffer' },
      { name = 'path' },
    }),
    mapping = cmp.mapping.preset.insert({
      ['<TAB>'] = cmp.mapping.confirm(
      {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true
      }),
    }),
}

-- Require languages.
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'clangd',
      'lua_ls'
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


-- In-editor error handling.
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false,
    signs = false,
})
