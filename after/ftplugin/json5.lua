vim.api.nvim_create_user_command('Prettyfy', function()
    pcall(vim.cmd, [[:%s/{/{\r/g]])
    pcall(vim.cmd, [[:%s/}/\r}/g]])
    pcall(vim.cmd, [[:%s/,/,\r/g]])
    pcall(vim.cmd, [[:%s/\s\+$//g]])
    pcall(vim.cmd, [[:%s/\n\+/\r/g]])
    vim.cmd.nohlsearch()
    vim.cmd.normal('ggVG=')
end, {})

vim.keymap.set({'n', 'v'}, '<leader>c', [[:s/^\(\s*\)/\1\/\/ /g<cr><esc>:nohlsearch<cr>]])
vim.keymap.set({'n', 'v'}, '<leader>C', [[:s/^\(\s*\)\/\/\s*/\1/g<cr><esc>:nohlsearch<cr>]])

