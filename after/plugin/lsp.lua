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
