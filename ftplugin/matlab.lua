require('common.GenericKeymaps')
CommentKeymap([[%]])

vim.opt_local.tabstop = 4;

vim.keymap.set('n', 'K', function()
    local word = vim.fn.expand('<cword>')
    if not word:match('^[%w_]+$') then
        return
    end
    vim.notify('Fetching MATLAB help for ' .. word .. '...')
    vim.system({ 'matlab', '-batch', 'help ' .. word }, { text = true }, vim.schedule_wrap(function(res)
        local out = vim.trim(res.stdout or '')
        if res.code ~= 0 or out == '' then
            vim.notify('No MATLAB help for ' .. word, vim.log.levels.WARN)
            return
        end
        vim.lsp.util.open_floating_preview(vim.split(out, '\n'), 'text', {
            border = 'rounded',
            max_height = 25,
            max_width = 120,
        })
    end))
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

