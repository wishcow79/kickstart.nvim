return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local api = require 'nvim-tree.api'

    -- Global mapping to toggle tree from anywhere
    vim.keymap.set('n', '<leader>e', api.tree.toggle, { desc = 'Toggle NvimTree' })
    require('nvim-tree').setup {
      on_attach = function(bufnr)
        api.config.mappings.default_on_attach(bufnr)
      end,
    }
  end,
}
