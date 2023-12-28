local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
	ensure_installed =
	{
		"javascript",
		"typescript",
		"python",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"rust",
		"toml"
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
