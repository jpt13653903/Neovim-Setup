vim.opt.showmode = false

local custom_catppuccin = require "catppuccin.utils.lualine"()

custom_catppuccin.normal  .a.bg = '#7091C4'
custom_catppuccin.insert  .a.bg = '#8AB886'
custom_catppuccin.command .a.bg = '#D49B77'
custom_catppuccin.visual  .a.bg = '#BB9BE0'

custom_catppuccin.normal  .c.bg = '#1e1e2e'
custom_catppuccin.inactive.c.bg = '#181824'
custom_catppuccin.normal  .c.fg = '#A1A8BF'

lualine = require('lualine')

my_tabline = {
    lualine_a = {{
        'tabs',
        max_length = vim.o.columns,
        mode = 2,
        path = 0,
        tabs_color = {
            active   = { fg = '#A1DA92', bg = '#424456' },
            inactive = { fg = '#444659', bg = '#1A1A27' },
        },
        symbols = {
            modified = "'",
        },
    }},
}

lualine.setup {
    options = {
        icons_enabled = true,
        theme = custom_catppuccin,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {},
        lualine_b = {'filetype'},
        lualine_c = {{ 'filename', path = 1 }},
        lualine_x = {'encoding'},
        lualine_y = {'location', 'progress'},
        lualine_z = {{ 'fileformat', symbols = { unix = 'U', dos = 'D', mac = 'M' } } }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{ 'filename', path = 1 }},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = my_tabline,
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

function onResize()
    my_tabline.lualine_a[1].max_length = vim.o.columns
    lualine.setup { tabline = my_tabline }
end

vim.cmd.autocmd('VimResized * silent! lua onResize()')
