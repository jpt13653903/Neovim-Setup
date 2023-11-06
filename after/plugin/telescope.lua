local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files,  {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles,   {})
vim.keymap.set('n', '<leader>fm', builtin.marks,      {})
vim.keymap.set('n', '<leader>fb', builtin.buffers,    {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  {})

vim.keymap.set('n', '<leader>*', builtin.grep_string, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep,   {})

