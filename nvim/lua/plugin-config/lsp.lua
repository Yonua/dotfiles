local cmp = require'cmp'

local cmp_kinds = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
}

cmp.setup({
	snippet = {	
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		-- ['<Tab>'] = cmp.mapping(function(fallback)
		--	if cmp.visible() then
		--		cmp.select_next_item()
		--	elseif vim.fn["vsnip#available"](1) == 1 then
		--		feedkey("<Plug>(vsnip-expand-or-jump)","")
		--	elseif has_words_before() then
		--		cmp.complete()
		--	else
		--		fallback()
		--	end
		-- end, {'i', 's'}),
		-- ['<S-Tab>'] = cmp.mapping(function()
		--	if cmp.visible() then
		--		cmp.select_prev_item()
		--	elseif vim.fn["vsnip#jumpable"](-1) == 1 then
		--		feedkey("<Plug>(vsnip-jump-prev)", "")
		--	end
		-- end, { 'i', 's' }),
	}),
	window = {
		completion = {
      			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      			col_offset = -3,
      			side_padding = 0,
    		},
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
    		format = function(entry, vim_item)
      			local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      			local strings = vim.split(kind.kind, "%s", { trimempty = true })
      			kind.kind = (cmp_kinds[vim_item.kind] or '') .. vim_item.kind
      			kind.menu = "    (" .. strings[2] .. ")"
      			return kind
    		end,
  	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
})

require'lspconfig'.rust_analyzer.setup{}

require'lspconfig'.clangd.setup{}

