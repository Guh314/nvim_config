return {
	"nvim-treesitter/nvim-treesitter",

	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
		"windwp/nvim-ts-autotag",
		-- "hiphish/rainbow-delimiters.nvim",
		"windwp/nvim-autopairs",
	},

	build = ":TSUpdate",
	event = "bufWinEnter",

	config = function()
		local treesitter = require("nvim-treesitter.configs")
		-- Already installed, becareful when declaring something here, it might cause a secondary
		-- installation attempt, bug it and some other stuff, my case the other stuff was nvim-tree.
		treesitter.setup({
			ensure_installed = {
				--"c",
				--"lua",
				--"vim",
				--"vimdoc",
				--"html",
				--"css",
				--"java",
				--"javascript",
				--"typescript",
				--"python",
				--"markdown",
				--"markdown_inline",
			},
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			autotag = {
				enable = true,
			},
			autopairs = {
				enable = true,
			},
			rainbow = {
				enable = true,
			},
		})
	end,
}
