local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "biome" } },
		typescript = { { "biome" } },
		typescriptreact = { { "biome" } },
		javascriptreact = { { "biome" } },
		css = { { "biome" } },
		html = { { "biome" } },
		json = { { "biome" } },
	},
	format_on_save = {
		timeout_ms = 300,
		lsp_fallback = true
	}
})
