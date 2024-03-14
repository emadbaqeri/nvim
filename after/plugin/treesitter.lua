local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	ensure_installed = {
		"javascript",
		"typescript",
		"lua",
		"vim",
		"vimdoc",
		"rust",
		"toml",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = true,
	},
	additional_vim_regex_highlighting = true,
	autotag = { enable = true },
})
