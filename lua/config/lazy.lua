-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require('config.set')
require('config.remap')
require('config.autocmd')

-- Setup lazy.nvim
require("lazy").setup({
    ui = {
        icons = {
            cmd     = "⌘",
            config  = "🛠",
            event   = "📅",
            ft      = "📂",
            init    = "⚙",
            keys    = "🗝",
            plugin  = "🔌",
            runtime = "💻",
            require = "🌙",
            source  = "📄",
            start   = "🚀",
            task    = "📌",
            lazy    = "💤 ",
        },
    },
    spec = {
        { 'catppuccin/nvim',
            name = "catppuccin",
            priority = 1000,
            opts = {
                transparent_background = true,
                show_end_of_buffer = true,
                term_colors        = true,
                -- dim_inactive = {
                --     enabled    = true,
                --     shade      = 'dark',
                --     percentage = 0.2,
                -- },
                no_italic = true,
            },
            lazy = false
        },

        { 'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate',
            lazy = false
        },

        { 'nvim-treesitter/nvim-treesitter-context',
            opts = {
                enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = ' ',
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            },
            lazy = false
        },

        { 'nvim-telescope/telescope.nvim',
            -- tag = '0.1.8',
            branch = '0.1.x',
            opts = {
                defaults = {
                    disable_devicons = true,
                },
            },
            dependencies = { 'nvim-lua/plenary.nvim',
                opts = {},
                lazy = false
            },
            lazy = false
        },

        { 'mbbill/undotree',
            opts = {},
            lazy = false
        },

        { 'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons',
                opts = {},
                lazy = false
            },
            lazy = false
        },

        { 'ouuan/nvim-bigfile',
            opts = {
                size_limit = 5*1024*1024,
                notification = true,
                syntax = true,
            },
            lazy = false
        },

        { 'stevearc/oil.nvim',
            opts = {
                default_file_explorer = false
            },
            lazy = false
        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "catppuccin" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
