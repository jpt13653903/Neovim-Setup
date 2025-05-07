require('common.GenericKeymaps')
CommentKeymap([[\/\/]])

vim.opt.tabstop = 4;

vim.api.nvim_create_user_command('Prettyfy', function()
    pcall(vim.cmd, [[:%s/{/{\r/g]])
    pcall(vim.cmd, [[:%s/}/\r}/g]])
    pcall(vim.cmd, [[:%s/,/,\r/g]])
    pcall(vim.cmd, [[:%s/\s\+$//g]])
    pcall(vim.cmd, [[:%s/\n\+/\r/g]])
    vim.cmd.nohlsearch()
    vim.cmd.normal('ggVG=')
end, {})

