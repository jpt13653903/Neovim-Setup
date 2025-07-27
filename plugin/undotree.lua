vim.keymap.set('n', '<leader>u', function()
    vim.cmd.UndotreeShow()
    vim.cmd.UndotreeFocus()
end)
-- Windows doesn't have "diff", but uses "FC" instead
vim.g.undotree_DiffCommand = "FC"

