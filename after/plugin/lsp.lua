require("mason").setup()

vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.WARN },
    },
    virtual_lines = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.keymap.set('n', 'gl', function()
    vim.diagnostic.open_float(0, { scope = "cursor"})
end)

