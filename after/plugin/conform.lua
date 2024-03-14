local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { { "stylua" } },
		javascript = { { "biome", "prettier", "prettierd" } },
		typescript = { { "biome", "prettier", "prettierd" } },
		javascriptreact = { { "biome", "prettier", "prettierd" } },
		typescriptreact = { { "biome", "prettier", "prettierd" } },
		css = { { "biome", "prettier", "prettierd" } },
		html = { { "biome", "prettier", "prettierd" } },
		json = { { "biome", "prettier", "prettierd" } },
		cpp = { { "clang-format" } },
	},
	format_on_save = {
		timeout_ms = 300,
		lsp_fallback = true,
	},
	formatters = {},
})
