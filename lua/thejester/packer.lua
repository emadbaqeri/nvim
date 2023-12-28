-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself

	use 'wbthomason/packer.nvim'

	-- colorschemes
	use 'NLKNguyen/papercolor-theme'
	use 'altercation/vim-colors-solarized'
	use 'nanotech/jellybeans.vim'

	use 'mbbill/undotree'

	use 'tpope/vim-fugitive'

	use "lukas-reineke/indent-blankline.nvim"

	use "stevearc/conform.nvim"

	use 'lewis6991/gitsigns.nvim'

	-- resource: https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/

	-- floating terminal
	use 'voldikss/vim-floaterm'

	-- rust tools
	-- fromt the source again
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'

	-- Completion framework:
	use 'hrsh7th/nvim-cmp'

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	-- source end;

	-- lsp configuration
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}

	use {
		'numToStr/Comment.nvim',
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TsUpdate' })

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { { 'nvim-lua/plenary.nvim' }
		}
	}
end)
