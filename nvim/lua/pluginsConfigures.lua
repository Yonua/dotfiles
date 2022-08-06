require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua", "julia"},
    sync_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting =false,
    },
}

require'nvim-tree'.setup{}

-- vim.cmd [[autocmd! ColorScheme * highlight NirmalFloat guibg=#ff0000]]
-- vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#0000ff]]

local cmp = require'cmp'

cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
       ['<C-d>'] = cmp.mapping.scroll_docs(-4),
       ['<C-f>'] = cmp.mapping.scroll_docs(4),
       ['<C-Space>'] = cmp.mapping.complete(),
       ['<CR>'] = cmp.mapping.confirm{
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
       },
       ['<C-e>'] = cmp.mapping.abort(),
    }),
    sources =cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    },{
        { name = 'buffer' }
    })
}

local capabilities require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').julials.setup{
    capabilities = capabilities
}
