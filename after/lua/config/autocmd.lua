-- Update buffer when file changed on disk
vim.opt.autoread = true
vim.cmd.autocmd('FocusGained * silent! checktime')

-- Remove trailing white-space on save
vim.cmd.autocmd('BufWrite * silent! %s/\\s\\+$//g')

-- Fold JSON files to level 1
vim.cmd.autocmd('BufRead *.json,*.json5 silent! set foldlevel=1')

