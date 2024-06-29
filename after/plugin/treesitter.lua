local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.vhdl = {
  install_info = {
    url = "https://github.com/jpt13653903/tree-sitter-vhdl.git",
    files = { 'src/parser.c', 'src/scanner.c' },
    branch = 'develop',
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = 'vhdl', -- if filetype does not match the parser name
}

parser_config.hungarian = {
  install_info = {
    url = "https://github.com/jpt13653903/tree-sitter-hungarian.git",
    files = { 'src/parser.c' },
    branch = 'master',
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = 'hungarian', -- if filetype does not match the parser name
}

local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = {
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
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
