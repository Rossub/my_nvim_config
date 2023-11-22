return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",

	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"cpp",
				"c",
				"gdscript",
				"python",
				"yuck",
			},
			-- auto install above language parsers
			auto_install = true,
		})
	end,
}
