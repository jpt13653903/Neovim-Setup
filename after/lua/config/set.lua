vim.opt.encoding     = 'utf-8'
vim.opt.termencoding = 'utf-8'
vim.opt.fileformat   = 'unix'
vim.opt.fileformats  = 'unix,dos'

-- vim.opt.lines = 20
-- vim.opt.columns = 90

vim.opt.nu          = true
vim.opt.rnu         = true
vim.opt.colorcolumn = '81'
vim.opt.signcolumn  = 'number'

vim.opt.backup        = false
vim.opt.undofile      = false
vim.opt.cindent       = false
vim.opt.autoindent    = false
vim.opt.smartindent   = true
vim.opt.tabstop       = 2
vim.opt.softtabstop   = 0
vim.opt.shiftwidth    = 0
vim.opt.expandtab     = true

vim.opt.foldmethod    = 'indent'
vim.opt.foldignore    = ''
vim.opt.foldcolumn    = '2'
vim.opt.foldlevel     = 99

function MyFoldText()
  return '----- ' .. vim.v.foldend - vim.v.foldstart + 1 .. ' Lines -----'
end
vim.opt.foldtext = 'v:lua.MyFoldText()'
vim.opt.fillchars = { eob = '-', fold = ' ' }

vim.opt.spell     = true
vim.opt.spelllang = 'en_gb'

vim.opt.wrap      = false
vim.opt.linebreak = true  -- wrap text

vim.opt.cursorline = true

vim.opt.hlsearch  = true
vim.opt.incsearch = true

vim.opt.scrolloff = 5

vim.g.mapleader = ' '

