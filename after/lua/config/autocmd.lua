-- Automatically update file when changed on disk
vim.opt.autoread = true
vim.cmd.autocmd('FocusGained * silent! checktime')

-- Automatically remove trailing white-space on save
vim.cmd.autocmd('BufWrite * silent! %s/\\s\\+$//g')

