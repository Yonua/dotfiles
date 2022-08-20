vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

	use 'wbthomason/packer.nvim'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly'
	}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'rust-analyzer/rust-analyzer'

	use 'onsails/lspkind.nvim'

--	use {
--		'projekt0n/github-nvim-theme',
--		config = function()
--			require'github-theme'.setup({})
--		end
--	}

--	use 'navarasu/onedark.nvim'

	use 'folke/tokyonight.nvim'

	use 'nvim-treesitter/nvim-treesitter'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

    use {
        'numToStr/Comment.nvim',
        config = function()
            require'Comment'.setup()
        end
    }

    use "lukas-reineke/indent-blankline.nvim"

end)
