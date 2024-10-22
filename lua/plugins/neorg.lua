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
							notes = "~/notes",
							other = "~/others",
							bio = "~/biography_info",
						},
						default_workspace = "other",
					}
				},
			}
		})
	end,
}
