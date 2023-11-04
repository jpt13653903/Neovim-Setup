vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
  function(use)
    use { 'wbthomason/packer.nvim' }

    -- use { 'folke/tokyonight.nvim'
      -- config = function()
      --   vim.cmd.colorscheme('tokyonight')
      --   -- vim.cmd.colorscheme('tokyonight-night')
      --   -- vim.cmd.colorscheme('tokyonight-storm')
      --   -- vim.cmd.colorscheme('tokyonight-day')
      --   -- vim.cmd.colorscheme('tokyonight-moon')
      -- end
    -- }
    use { 'catppuccin/nvim',
      config = function()
        vim.cmd.colorscheme('catppuccin')
        -- vim.cmd.colorscheme('catppuccin-latte')
        -- vim.cmd.colorscheme('catppuccin-frappe')
        -- vim.cmd.colorscheme('catppuccin-macchiato')
        -- vim.cmd.colorscheme('catppuccin-mocha')
      end
    }

    use { 'nvim-telescope/telescope.nvim',
      tag = '0.1.4',
      -- or                          , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use { 'VonHeikemen/lsp-zero.nvim',
      -- branch = 'v3.x',
      -- requires = {
      --   -- Manage LSP servers from neovim
      --   {'williamboman/mason.nvim'},
      --   {'williamboman/mason-lspconfig.nvim'},
      --   -- LSP Support
      --   {'neovim/nvim-lspconfig'},
      --   -- Autocompletion
      --   {'hrsh7th/nvim-cmp'},
      --   {'hrsh7th/cmp-nvim-lsp'},
      --   {'L3MON4D3/LuaSnip'},
      -- }
    -- }
  end
)
