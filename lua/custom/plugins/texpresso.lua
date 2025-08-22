return {
  'let-def/texpresso.vim',
  ft = { 'tex', 'plaintex', 'latex' },
  init = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'tex', 'plaintex', 'latex' },
      callback = function(ev)
        vim.keymap.set('n', '<leader>tp', ':TeXpresso %<CR>', { buffer = ev.buf, noremap = true, silent = true, desc = 'Start TeXpresso' })
      end,
    })
  end,
}
