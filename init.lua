require('config.pack')
require('config.set')
require('config.remap')
require('config.autocmd')
require('config.filetypes')

vim.lsp.enable({ 'clangd', 'matlab_ls', 'vhdl_ls' })

