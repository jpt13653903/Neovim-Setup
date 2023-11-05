local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.vhdl = {
  install_info = {
    url = "https://github.com/alemuller/tree-sitter-vhdl.git",
    files = { 'src/parser.c' },
    branch = 'main',
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = 'vhdl', -- if filetype does not match the parser name
}

local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    'arduino',
    'bash',
    'bibtex',
    'c',
    'c_sharp',
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
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
