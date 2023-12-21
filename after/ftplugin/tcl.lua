vim.opt.tabstop = 4

vim.keymap.set({'n', 'v'}, '<leader>c', [[:s/^\(\s*\)/\1# /g<cr><esc>:nohlsearch<cr>]])
vim.keymap.set({'n', 'v'}, '<leader>C', [[:s/^\(\s*\)#\s*/\1/g<cr><esc>:nohlsearch<cr>]])

