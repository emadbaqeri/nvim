vim.filetype.add({
	extensions = {
		astro = "astro",
		mdx = "mdx",
	},
})

vim.treesitter.language.register("markdown", "mdx")
