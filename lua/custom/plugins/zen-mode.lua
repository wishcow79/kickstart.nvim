return {
  'folke/zen-mode.nvim',
  lazy = false,
  opts = {
    window = {
      -- options for the Zen window
      options = {
        signcolumn = 'no', -- disable signcolumn
        number = false, -- disable number column
        relativenumber = false, -- disable relative numbers
        cursorline = false, -- disable cursorline
        cursorcolumn = false, -- disable cursor column
        foldcolumn = '0', -- disable fold column
        list = false, -- disable whitespace characters
      },
    },
  },
  config = function(_, opts)
    require('zen-mode').setup(opts)

    -- Global keymap to toggle Zen Mode
    vim.keymap.set('n', '<leader>z', function()
      require('zen-mode').toggle()
    end, { desc = 'Toggle Zen Mode' })
  end,
}
