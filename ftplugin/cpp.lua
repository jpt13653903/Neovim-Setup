require('common.CodingStyles')

require('common.GenericKeymaps')
CommentKeymap([[\/\/]])

vim.opt_local.tabstop = 4;

vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover { border = 'rounded', max_height = 25, max_width = 120 }
end)
vim.keymap.set({ 'n', 'i' }, '<C-k>', function()
    vim.lsp.buf.signature_help { border = 'rounded' }
end)
vim.keymap.set('n', 'gri', function()
    vim.lsp.buf.definition()
    vim.lsp.buf.definition()
end)
vim.keymap.set('n', 'grd', function()
    vim.lsp.buf.definition()
end)
vim.keymap.set('n', 'grD', function()
    vim.lsp.buf.declaration()
end)
vim.keymap.set('n', 'grr', function()
    vim.lsp.buf.references()
end)
vim.keymap.set('n', 'grn', function()
    vim.lsp.buf.rename()
end)

