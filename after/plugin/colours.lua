local colour = require('catppuccin')

colour.setup({
  show_end_of_buffer = true,
  term_colors        = true,
  dim_inactive = {
    enabled    = true,
    shade      = 'dark',
    percentage = 0.2,
  },
  styles = {
    comments = {},
  },
})

vim.opt.background = 'dark'
vim.cmd.colors('catppuccin')
vim.cmd.syntax('enable')

