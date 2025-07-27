require('common.GenericKeymaps')
CommentKeymap([[--]])

vim.opt_local.tabstop = 2;

vim.lsp.start({
    name = 'vhdl_ls',
    cmd = {'vhdl_ls'},
    root_dir = vim.fs.dirname(vim.fs.find({ 'vhdl_ls.toml', '.git' }, { upward = true })[1]) or '.',
    on_attach = function(client, bufnr)
        client.server_capabilities.semanticTokensProvider = nil
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = false,
            convert = function(item)
                return { abbr = item.label:gsub('%b()', '') }
            end,
        })
    end,
})

vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover { border = 'rounded', max_height = 25, max_width = 120 }
end)

