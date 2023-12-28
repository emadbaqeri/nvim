local lsp = require("lsp-zero")
local cmp = require("cmp")
local mason = require("mason")
local mason_lspconf = require("mason-lspconfig")

local cmp_select = { behavior = cmp.SelectBehavior.Select }

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = false,
	float = {
		border = 'rounded',
		source = 'always',
		header = '',
		prefix = '',
	},
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-m>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<Tab>'] = cmp.mapping.confirm(),
		['<Enter>'] = cmp.mapping.confirm(),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>fd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>rnn", function() vim.lsp.buf.rename() end, opts)
end)

mason.setup({})
mason_lspconf.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"rust_analyzer",
		"emmet_ls",
		"lua_ls"
	},
	handlers = {
		lsp.default_setup,
	}
})
