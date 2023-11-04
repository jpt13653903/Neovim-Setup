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
    comments     = {},
    conditionals = {},
  },
  -- highlight_overrides = {
  --   all = function(colors)
  --     return {
  --       Constant = { fg = C.teal }, -- (preferred) any constant
  --       Number   = { fg = C.teal, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
  --       Boolean  = { fg = C.teal, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false

  --       String = { fg = C.lavender, style = O.styles.strings or {} }, -- a string constant: "this is a string"

  --       Identifier = { fg = C.sapphire, style = O.styles.variables or {} }, -- (preferred) any variable name

  --       Statement   = { fg = C.blue }, -- (preferred) any statement
  --       Conditional = { fg = C.blue, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etc.
  --       Repeat      = { fg = C.blue, style = O.styles.loops or {} }, --   for, do, while, etc.
  --       Keyword     = { fg = C.blue, style = O.styles.keywords or {} }, --  any other keyword

	-- 	    PreProc = { fg = C.peach }, -- (preferred) generic Preprocessor

  --       StorageClass = { fg = C.green }, -- static, register, volatile, etc.
  --       Structure    = { fg = C.green }, --  struct, union, enum, etc.
  --       Type         = { fg = C.green, style = O.styles.types or {} }, -- (preferred) int, long, char, etc.
  --     }
  --   end
  -- },
})

vim.opt.background = 'dark'
vim.cmd.colors('catppuccin')
-- vim.cmd.colors('petrel-jpt')
vim.cmd.syntax('enable')

