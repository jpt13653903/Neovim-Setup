vim.keymap.set({'n', 'i', 'v'}, '<tab>', '<esc>')

vim.keymap.set( 'n',            '<C-a>', 'ggVG')
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', vim.cmd.wa)

vim.keymap.set( 'i',       '<C-z>', '<esc>ui')
vim.keymap.set( 'v',       '<C-x>', '"+x')
vim.keymap.set( 'v',       '<C-c>', '"+y')
vim.keymap.set({'n', 'v'}, '<C-v>', '"+gP')
vim.keymap.set( 'i',       '<C-v>', '<C-r><C-p>+')
vim.keymap.set( 'c',       '<C-v>', '<C-r>+')

vim.keymap.set({'n', 'v'}, '<S-Insert>', '"+gP')
vim.keymap.set( 'i',       '<S-Insert>', '<C-r><C-p>+')
vim.keymap.set( 'c',       '<S-Insert>', '<C-r>+')

vim.keymap.set('n', 'U', vim.cmd.redo)

vim.keymap.set('n', 'Q', '<Nop>')

vim.keymap.set({'i', 'v'}, '<MiddleMouse>', '<Nop>')

vim.keymap.set('i', '<C-Space>', '<C-p>')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '^', 'g^')

vim.keymap.set('n', 'n',  'nzv')
vim.keymap.set('n', 'N',  'Nzv')

vim.keymap.set('n', '<F3>',  'nzv')
vim.keymap.set('n', '<F7>',  ']szv')
vim.keymap.set('n', '<F10>', '080lBi<cr><esc>')

vim.keymap.set('i', '<F3>',  '<esc>lnzvi')
vim.keymap.set('i', '<F7>',  '<esc>l]szvi')
vim.keymap.set('i', '<F10>', '<esc>080lBi<cr>')

vim.keymap.set('n', '<leader>tn', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>tc', vim.cmd.tabclose)
vim.keymap.set('n', '<leader>th', function() vim.cmd.tabmove('-1') end)
vim.keymap.set('n', '<leader>tl', function() vim.cmd.tabmove('+1') end)

vim.keymap.set('n', '<leader>tw', "mT:tabclose<cr>:vsp<cr>'T")
vim.keymap.set('n', '<leader>tW', "mT:tabclose<cr>gT:vsp<cr>'T")
vim.keymap.set('n', '<leader>wt', "<C-w>T")

vim.keymap.set('v', '<leader>(', "s()<esc>Pl%");
vim.keymap.set('v', '<leader>[', "s[]<esc>Pl%");
vim.keymap.set('v', '<leader>{', "s{}<esc>Pl%");
