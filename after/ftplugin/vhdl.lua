require('common.GenericKeymaps')
CommentKeymap([[--]])

vim.opt.tabstop = 2;

vim.lsp.start({
    name = 'vhdl_ls',
    cmd = {'vhdl_ls'},
    root_dir = vim.fs.dirname(vim.fs.find({ 'vhdl_ls.toml', '.git' }, { upward = true })[1]),
})

