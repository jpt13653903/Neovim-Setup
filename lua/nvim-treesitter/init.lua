local M = {}

function M.indentexpr()
  return require('nvim-treesitter.indent').get_indent(vim.v.lnum)
end

return M

