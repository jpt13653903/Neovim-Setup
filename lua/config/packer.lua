vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)
        use { 'wbthomason/packer.nvim' }

        use { 'catppuccin/nvim' }

        use { 'nvim-treesitter/nvim-treesitter',
            branch = 'main',
            run    = ':TSUpdate'
        }

        use { 'nvim-treesitter/nvim-treesitter-context' }

        use { 'nvim-telescope/telescope.nvim',
            branch   = 'master',
            requires = { 'nvim-lua/plenary.nvim' }
        }

        use { 'mbbill/undotree' }

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }

        use {
            'ouuan/nvim-bigfile',
            config = function()
                require('bigfile').setup({
                    size_limit = 5*1024*1024,
                    notification = true,
                    syntax = true,
                })
            end
        }

        use {
            'stevearc/oil.nvim',
            config = function()
                require("oil").setup({
                    default_file_explorer = false
                })
            end,
        }

        use {
            "williamboman/mason.nvim"
        }
    end
)
