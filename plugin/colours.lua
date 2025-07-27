local colour = require('catppuccin')

colour.setup({
    transparent_background = true,
    show_end_of_buffer = true,
    term_colors        = true,
    -- dim_inactive = {
    --     enabled    = true,
    --     shade      = 'dark',
    --     percentage = 0.2,
    -- },
    no_italic = true,
})

vim.opt.background = 'dark'
vim.cmd.colors('catppuccin')

