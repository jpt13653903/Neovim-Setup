vim.keymap.set('i', '<tab>', '<esc>')
vim.keymap.set('v', '<tab>', '<esc>')

vim.keymap.set('n', '<C-v>', '"+P')
vim.keymap.set('v', '<C-v>', '"+P')
vim.keymap.set('i', '<C-v>', '<esc>"+P')
vim.keymap.set('v', '<C-c>', '"+y')

vim.keymap.set('i', 'Q', '<Nop>')
vim.keymap.set('i', '<MiddleMouse>', '<Nop>')
vim.keymap.set('v', '<MiddleMouse>', '<Nop>')

vim.keymap.set('i', '<C-Space>', '<C-P>')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '^', 'g^')

vim.keymap.set('n', 'n',  'nzzzv')
vim.keymap.set('n', 'N',  'Nzzzv')

vim.keymap.set('n', '<F3>',  'nzzzv')
vim.keymap.set('n', '<F7>',  ']szzzv')
vim.keymap.set('n', '<F10>', '080lBi<return><esc>')

vim.keymap.set('i', '<F3>',  '<esc>lnzzi')
vim.keymap.set('i', '<F7>',  '<esc>l]szzi')
vim.keymap.set('i', '<F10>', '<esc>080lBi<return>')

