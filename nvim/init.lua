-- baisc configures

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- plugins install

require'plugins'

-- plugins configures

require'plugin-config/tree'
require'plugin-config/lsp'
require'plugin-config/theme'
require'plugin-config/high'
require'plugin-config/comment'
require'plugin-config/indent'
