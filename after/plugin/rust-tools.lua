local rust_tools = require("rust-tools")

rust_tools.setup({
	server = {
		on_attach = function(_, bufnr)
			local opts = { buffer = bufnr }
			vim.keymap.set("n", "<C-space>", rust_tools.hover_actions.hover_actions, opts)
			vim.keymap.set("n", "<leader>a", rust_tools.code_action_group.code_action_group, opts)
		end
	}
})
