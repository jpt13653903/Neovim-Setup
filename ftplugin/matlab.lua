require('common.GenericKeymaps')
CommentKeymap([[%]])

vim.opt_local.tabstop = 4;

vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover { border = 'rounded', max_height = 25, max_width = 120 }
end, { buffer = true })
vim.keymap.set({ 'n', 'i' }, '<C-k>', function()
    vim.lsp.buf.signature_help { border = 'rounded' }
end, { buffer = true })
vim.keymap.set('n', 'gri', function()
    vim.lsp.buf.definition()
end, { buffer = true })
vim.keymap.set('n', 'grr', function()
    vim.lsp.buf.references()
end, { buffer = true })
vim.keymap.set('n', 'grn', function()
    vim.lsp.buf.rename()
end, { buffer = true })

