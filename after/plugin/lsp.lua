require("mason").setup()

vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.keymap.set('n', 'gl', function()
    vim.diagnostic.open_float(0, { border = 'rounded', scope = 'cursor' })
end)

vim.keymap.set('n', '<leader>l', function()
    vim.diagnostic.config({
        virtual_text = {
            severity = { min = vim.diagnostic.severity.WARN },
        },
    })
end)

vim.keymap.set('n', '<leader>L', function()
    vim.diagnostic.config({
        virtual_text = false,
    })
end)

