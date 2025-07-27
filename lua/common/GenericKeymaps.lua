function CommentKeymap(CommentChars)
    vim.keymap.set({'n', 'v'}, '<leader>c', [[:s/^\(\s*\)/\1]] .. CommentChars .. [[ /g<cr><esc>:nohlsearch<cr>]])
    vim.keymap.set({'n', 'v'}, '<leader>C', [[:s/^\(\s*\)]] .. CommentChars .. [[\s*/\1/g<cr><esc>:nohlsearch<cr>]])
end
