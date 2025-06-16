local parser_config = require('nvim-treesitter.parsers')

vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
callback = function()
    require('nvim-treesitter.parsers').alcha = {
        install_info = {
            url     = "https://github.com/jpt13653903/tree-sitter-alcha.git",
            files   = { 'src/parser.c', 'src/scanner.c' },
            branch  = 'master',
            queries = 'queries',
        },
    }
end})

vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
callback = function()
    require('nvim-treesitter.parsers').hungarian = {
        install_info = {
            url     = "https://github.com/jpt13653903/tree-sitter-hungarian.git",
            files   = { 'src/parser.c', 'src/scanner.c' },
            branch  = 'master',
            queries = 'queries/hungarian',
        },
    }
end})

languages = {
    'alcha',
    'arduino',
    'bash',
    'bibtex',
    'c',
    'c_sharp',
    'comment',
    'cpp',
    'css',
    'csv',
    'cuda',
    'devicetree',
    'diff',
    'ebnf',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'glsl',
    'hlsl',
    'html',
    'htmldjango',
    'http',
    'hungarian',
    'ini',
    'javascript',
    'json',
    'json5',
    'jsonc',
    'latex',
    'lua',
    'luadoc',
    'make',
    'markdown',
    'matlab',
    'mermaid',
    'objdump',
    'passwd',
    'python',
    'ssh_config',
    'toml',
    'verilog',
    'vhdl',
    'vim',
    'vimdoc',
    'xml',
    'yaml',
}

local treesitter = require('nvim-treesitter')

treesitter.install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern  = languages,
  callback = function() vim.treesitter.start() end,
})
