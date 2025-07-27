vim.api.nvim_create_user_command('StyleKnR', function()
    -- Pull up the opening brace on control statements
    pcall(vim.cmd, [[:%s/^\(\s\+.*)\)\(\s*\/\/.*\)\?\n\(\s\+\)\({.*\)/\1\4\2/g]])
    -- Pull up the opening brace on "else" and "try" statements
    pcall(vim.cmd, [[:%s/^\(\s\+.*\(else\|try\)\)\(\s*\/\/.*\)\?\n\(\s\+\)\({.*\)/\1\5\3/g]])
    -- Pull up the "else" or "catch" after a closing brace
    pcall(vim.cmd, [[:%s/^\(\s*}\)\s*\n\s*\(else\|catch\)/\r\1\2/g]])
    -- Remove spaces between control statements and the bracket
    pcall(vim.cmd, [[:%s/\(if\|for\|while\|do\|switch\|catch\)\s*(/\1(/g]])
    -- Pull up braces for class and struct definitions, but not functions
    pcall(vim.cmd, [[:%s/\(.*\(struct\|class\).\{-}\)\(\s*\/\/.*\)\?$\n\s*{\s*$/\1{\3/g]])
    vim.cmd.nohlsearch()
end, {})

vim.api.nvim_create_user_command('StyleAllman', function()
    -- Drop the opening brace after control statements
    pcall(vim.cmd, [[:%s/^\(\s\+\)\(.*\))\s*{\(\s*\/\/.*\)\?$/\1\2)\3\r\1{/g]])
    -- Drop the "else" or "catch" after the closing brace
    pcall(vim.cmd, [[:%s/^\(\s\+\)}\s*\(else\|catch\)/\1}\r\1\2/g]])
    -- Drop the opening brace after the "else" or "try"
    pcall(vim.cmd, [[:%s/^\(\s\+\)\(else\|try\)\s*{\(\s*\/\/.*\)\?/\1\2\3\r\1{/g]])
    -- Add space between the control statement and the bracket
    pcall(vim.cmd, [[:%s/\(if\|for\|while\|do\|switch\|catch\)\s*(/\1 (/g]])
    -- Make sure that all opening braces are on their own line (structs, classes, etc.)
    pcall(vim.cmd, [[:%s/^\(\s*\)\(\S.*\){\(\s*\/\/.*\)\?/\1\2\3\r\1{/g]])
    -- Remove empty lines above closing braces
    pcall(vim.cmd, [[:%s/^\s*\n\(\s*}\)/\1/g]])
    vim.cmd.nohlsearch()
end, {})

