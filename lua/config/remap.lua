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

vim.keymap.set('v', 'p', '"_xP')
vim.keymap.set('v', 'P', '"_xP')

vim.keymap.set('n', 'U', vim.cmd.redo)

vim.keymap.set('n', 'Q', '<Nop>')

vim.keymap.set({'i', 'v'}, '<MiddleMouse>', '<Nop>')

vim.keymap.set('i', '<C-o>', '<C-x><C-o>')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '^', 'g^')

vim.keymap.set('n', 'n',  'nzv')
vim.keymap.set('n', 'N',  'Nzv')

-- vim.keymap.set('v', '<',  '<gv')
-- vim.keymap.set('v', '>',  '>gv')

vim.keymap.set('n', '<F3>',  'nzv')
vim.keymap.set('n', '<F7>',  ']szv')

vim.keymap.set('i', '<F3>',  '<esc>lnzvi')
vim.keymap.set('i', '<F7>',  '<esc>l]szvi')

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

vim.keymap.set('n', '<leader>e', vim.cmd.Explore)

vim.keymap.set('n', '<leader>0', function() vim.opt.foldlevel = 0 end)
vim.keymap.set('n', '<leader>1', function() vim.opt.foldlevel = 1 end)
vim.keymap.set('n', '<leader>2', function() vim.opt.foldlevel = 2 end)
vim.keymap.set('n', '<leader>3', function() vim.opt.foldlevel = 3 end)
vim.keymap.set('n', '<leader>4', function() vim.opt.foldlevel = 4 end)
vim.keymap.set('n', '<leader>5', function() vim.opt.foldlevel = 5 end)
vim.keymap.set('n', '<leader>6', function() vim.opt.foldlevel = 6 end)
vim.keymap.set('n', '<leader>7', function() vim.opt.foldlevel = 7 end)
vim.keymap.set('n', '<leader>8', function() vim.opt.foldlevel = 8 end)
vim.keymap.set('n', '<leader>9', function() vim.opt.foldlevel = 9 end)
