local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { { "stylua" } },
		javascript = { { "prettier", "prettierd" } },
		typescript = { { "prettier", "prettierd" } },
		javascriptreact = { { "prettier", "prettierd" } },
		typescriptreact = { { "prettier", "prettierd" } },
		css = { { "prettier", "prettierd" } },
		html = { { "prettier", "prettierd" } },
		json = { { "prettier", "prettierd" } },
	},
	format_on_save = {
		timeout_ms = 300,
		lsp_fallback = true,
	},
})
