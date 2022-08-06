-- basic configures

vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true


-- plugins install

require('plugins')


-- plugins configures

require('pluginsConfigures')

-- map keys

require('mapkeys')
