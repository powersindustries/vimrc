local lsp_zero = require('lsp-zero')


-- Default setup
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)


-- Auto Complete with Enter
local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<TAB>'] = cmp.mapping.confirm({select = false}),
  }),
})


-- Require languages
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'tsserver',
      'eslint',
      'html',
      'cssls',
      'clangd',
      'lua_ls'
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
