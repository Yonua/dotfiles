require'nvim-tree'.setup()

local nt_api = require'nvim-tree.api'

vim.keymap.set("n", "<leader>o", nt_api.tree.toggle)
vim.keymap.set("n", "<leader>f", nt_api.tree.focus)
vim.keymap.set("n", "<leader>c", nt_api.tree.close)


