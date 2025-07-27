local builtin    = require('telescope.builtin')
local pickers    = require('telescope.pickers')
local finders    = require('telescope.finders')
local make_entry = require('telescope.make_entry')
local conf       = require('telescope.config').values
--------------------------------------------------------------------------------

-- https://www.youtube.com/watch?v=xdXE1tOT-qg
local live_multigrep = function(opts)
    opts = opts or {}
    opts.cwd = opts.cwd or vim.uv.cwd()

    local finder = finders.new_async_job {
        command_generator = function(prompt)
            if not prompt or prompt == '' then
                return nil
            end

            local pieces = vim.split(prompt, '  ')
            local args = { 'rg' }

            if pieces[1] then
                table.insert(args, '-e')
                table.insert(args, pieces[1])
            end

            if pieces[2] then
                table.insert(args, '-g')
                table.insert(args, pieces[2])
            end

            ---@diagnostic disable-next-line: deprecated
            return vim.tbl_flatten {
                args,
                { "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" }
            }
        end,

        entry_maker = make_entry.gen_from_vimgrep(opts),
        cwd = opts.cwd,
    }

    pickers.new(opts, {
        debounce     = 100,
        prompt_title = "Multi Grep",
        finder       = finder,
        previewer    = conf.grep_previewer(opts),
        sorter       = require('telescope.sorters').empty(),
    }):find()
end
--------------------------------------------------------------------------------

local goto_file = function(opts)
    filename = vim.fn.expand('<cword>')

    opts = opts or {}
    opts.cwd = opts.cwd or vim.uv.cwd()

    find_command = { 'rg',
        '--files', '--color=never', '--no-heading', '--with-filename',
        '--line-number', '--column', '--smart-case',
        '-g', '*' .. filename .. '*'
    }

    ---@diagnostic disable-next-line: deprecated
    find_command = vim.tbl_flatten {
        find_command,
    }

    pickers.new(opts, {
        debounce     = 100,
        prompt_title = 'Goto File (' .. filename .. ')',
        finder       = finders.new_oneshot_job(find_command, opts),
        previewer    = conf.file_previewer(opts),
        sorter       = conf.file_sorter(opts),
    }):find()
end
--------------------------------------------------------------------------------

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files,  {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles,   {})
vim.keymap.set('n', '<leader>fm', builtin.marks,      {})
vim.keymap.set('n', '<leader>fb', builtin.buffers,    {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  {})
vim.keymap.set('n', '<leader>gf', goto_file,          {})

vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions,      {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations,  {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references,       {})

vim.keymap.set('n', '<leader>*', builtin.grep_string, {})
vim.keymap.set('n', '<leader>/', live_multigrep,      {})
--------------------------------------------------------------------------------

