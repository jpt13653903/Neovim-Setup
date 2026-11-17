require('common.GenericKeymaps')
CommentKeymap([[--]])

vim.opt_local.tabstop = 2;

vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover { border = 'rounded', max_height = 25, max_width = 120 }
end)


