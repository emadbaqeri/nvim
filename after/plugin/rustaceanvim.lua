vim.g.rustaceanvim = {
	tools = {},
	server = {
		on_attach = function(_client, _bufnr) end,
		settings = function(project_root)
			local ra = require("rustaceanvim.config.server")
			return ra.load_rust_analyzer_settings(project_root, {
				settings_file_pattern = "rust-analyzer.json",
			})
		end,
	},
	dap = {},
}
