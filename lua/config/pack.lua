vim.pack.add({
    { src = 'https://github.com/wbthomason/packer.nvim' },

    { src = 'https://github.com/catppuccin/nvim' },

    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },

    { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },

    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim', version = 'master' },

    { src = 'https://github.com/mbbill/undotree' },

    -- { src = 'https://github.com/nvim-tree/nvim-web-devicons', opt = true },
    { src = 'https://github.com/nvim-lualine/lualine.nvim' },

    { src = 'https://github.com/ouuan/nvim-bigfile' },

    { src = 'https://github.com/stevearc/oil.nvim' },

    { src = 'https://github.com/williamboman/mason.nvim' },
})

require('bigfile').setup({
    size_limit = 512*1024,
    notification = true,
    syntax = true,
})

require("oil").setup({
    default_file_explorer = false
})
