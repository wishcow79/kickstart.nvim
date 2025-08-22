return {
  'lervag/vimtex',
  lazy = false, -- load at startup (recommended)
  init = function()
    -- use Zathura viewer
    vim.g.vimtex_view_method = 'sioyek'

    -- use latexmk as the compiler (default is latexmk, this just makes it explicit)
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      continuous = 1, -- continuous compilation
      out_dir = 'build', -- optional: keep aux/pdf in ./build
    }

    -- Optional: turn off conceal in math (some people prefer to see raw code)
    -- vim.g.vimtex_syntax_conceal = {
    --   accents = 0,
    --   ligatures = 0,
    --   cites = 0,
    --   fancy = 0,
    --   spacing = 0,
    --   greek = 0,
    --   math_bounds = 0,
    --   math_delimiters = 0,
    --   math_fracs = 0,
    --   math_super_sub = 0,
    --   math_symbols = 0,
    --   sections = 0,
    --   styles = 0,
    -- }
  end,
  config = function()
    -- Handy global keymaps using VimTeX functions (optional)
    vim.keymap.set('n', '<leader>lt', '<Cmd>VimtexCompile<CR>', { desc = 'VimTeX: Compile (toggle cont.)' })
    vim.keymap.set('n', '<leader>lv', '<Cmd>VimtexView<CR>', { desc = 'VimTeX: View (forward search)' })
    vim.keymap.set('n', '<leader>lc', '<Cmd>VimtexClean<CR>', { desc = 'VimTeX: Clean aux' })
  end,
}
