-- Modified from LazyVim
-- Link: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua

return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            always_show_bufferline = false,
            mode = "tabs",
            -- diagnostics_indicator = function(_, _, diag)
            --   local icons = LazyVim.config.icons.diagnostics
            --   local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            --     .. (diag.warning and icons.Warn .. diag.warning or "")
            --   return vim.trim(ret)
            -- end,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
            -- ---@param opts bufferline.IconFetcherOpts
            -- get_element_icon = function(opts)
            --   return LazyVim.config.icons.ft[opts.filetype]
            -- end,
        },
    },
    config = function(_, opts)
        require("bufferline").setup(opts)
        -- Fix bufferline when restoring a session
        vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
            callback = function()
                -- vim.schedule(function()
                --   pcall(nvim_bufferline)
                -- end)
            end,
        })
    end,
}
