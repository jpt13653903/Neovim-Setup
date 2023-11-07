vim.keymap.set('n', '<leader>u', function()
  vim.cmd.UndotreeShow()
  vim.cmd.UndotreeFocus()
end)

