-- Update buffer when file changed on disk
vim.opt.autoread = true
vim.cmd.autocmd('FocusGained * silent! checktime')

-- Remove trailing white-space on save
vim.cmd.autocmd('BufWrite * silent! %s/\\s\\+$//g')

-- Fold JSON files to level 1
vim.cmd.autocmd('BufRead *.json,*.json5 silent! set foldlevel=1')

-- Disable folding in telescope results
vim.cmd.autocmd('FileType TelescopeResults setlocal nofoldenable')

-- Run commands that are only available after Qt attaches
-- vim.cmd.autocmd('UIEnter * silent! GuiWindowOpacity 0.95')

