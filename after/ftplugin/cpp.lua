vim.api.nvim_create_user_command('StyleKnR', function()
    pcall(vim.cmd, [[:%s/^\(\s\+.*)\)\(\s*\/\/.*\)\?\n\(\s\+\)\({.*\)/\1\4\2/g]])
    pcall(vim.cmd, [[:%s/^\(\s\+.*else\)\(\s*\/\/.*\)\?\n\(\s\+\)\({.*\)/\1\4\2/g]])
    pcall(vim.cmd, [[:%s/^\(\s*}\)\s*\n\s*else/\r\1else/g]])
    pcall(vim.cmd, [[:%s/\(if\|for\|while\|do\)\s*(/\1(/g]])
    vim.cmd.nohlsearch()
end, {})

vim.api.nvim_create_user_command('StyleAllman', function()
    pcall(vim.cmd, [[:%s/^\(\s\+\)\(.*\))\s*{\(\s*\/\/.*\)\?$/\1\2)\3\r\1{/g]])
    pcall(vim.cmd, [[:%s/^\(\s\+\)}\s*else/\1}\r\1else/g]])
    pcall(vim.cmd, [[:%s/^\(\s\+\)else\s*{\(\s*\/\/.*\)\?/\1else\2\r\1{/g]])
    pcall(vim.cmd, [[:%s/\(if\|for\|while\|do\)\s*(/\1 (/g]])
    pcall(vim.cmd, [[:%s/^\s*\n\(\s*}\)/\1/g]])
    vim.cmd.nohlsearch()
end, {})

