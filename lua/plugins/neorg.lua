return {
	"nvim-neorg/neorg",
	dependencies = { 'nvim-lua/plenary.nvim' },
	lazy = false,
	version = "*",
	config = function()
		local neorg = require("neorg")
		neorg.setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							generalNotes = "~/Norg/generalNotes",
							specificNotes = "~/Norg/specificNotes",
							bio = "~/Norg/biography_info",
							novels = "~/Norg/novels"
						},
						default_workspace = "generalNotes",
					}
				},
			}
		})
	end,
}
