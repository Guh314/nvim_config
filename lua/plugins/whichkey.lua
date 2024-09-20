return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {},
    config = function()
        local wk = require("which-key")
        wk.add({
            -- Buffers
            { "<leader>b",   group = "buffer" },
            { "<leader>bd",  "<CMD>:bdelete<CR>",                                                     desc = "Delete Current Buffer" },
            { "<leader>bl",  "<CMD>:buffers<CR>",                                                     desc = "List All Buffers" },
            { "<leader>bn",  "<CMD>:bnext<CR>",                                                       desc = "Next Buffer" },
            { "<leader>bp",  "<CMD>:bprev<CR>",                                                       desc = "Previous Buffer" },

            -- Colorschemes
            { "<leader>c",   group = "colorscheme" },
            { "<leader>cn",  group = "Nightfox" },
            { "<leader>cnd", ":colorscheme dayfox<CR>",                                               desc = "Dayfox" },
            { "<leader>cne", ":colorscheme nordfox<CR>",                                              desc = "Nordfox" },
            { "<leader>cnm", ":colorscheme dawnfox<CR>",                                              desc = "Dawnfox" },
            { "<leader>cnn", ":colorscheme nightfox<CR>",                                             desc = "Nightfox" },
            { "<leader>cnr", ":colorscheme terafox<CR>",                                              desc = "Terafox" },
            { "<leader>cnt", ":colorscheme duskfox<CR>",                                              desc = "Duskfox" },
            { "<leader>ct",  group = "Tokyonight" },
            { "<leader>ctd", ":colorscheme tokyonight-day<CR>",                                       desc = "Tokyonight-day" },
            { "<leader>ctm", ":colorscheme tokyonight-moon<CR>",                                      desc = "Tokyonight-moon" },
            { "<leader>ctn", ":colorscheme tokyonight-night<CR>",                                     desc = "Tokyonight-night" },

            -- NvimTree
            { "<leader>e",   group = "NvimTree" },
            { "<leader>ee",  ":NvimTreeToggle<cr>",                                                   desc = "NvimTreeToggle" },
            { "<leader>ef",  ":NvimTreeFocus<cr>",                                                    desc = "NvimTreeFocus" },
            { "<leader>eh",  ":e ~/<cr>",                                                             desc = "NvimTreeHome" },

            -- NoNeckPain
            { "<leader>n",   group = "NoNeckPain" },
            { "<leader>nn",  ":NoNeckPain<cr>",                                                       desc = "NoNeckPain Toggle" },
            { "<leader>nu",  ":NoNeckPainWidthUp<cr>",                                                desc = "NoNeckPain Width Up" },
            { "<leader>nd",  ":NoNeckPainWidthDown<cr>",                                              desc = "NoNeckPain Width Down" },
            { "<leader>nl",  ":NoNeckPainToggleLeftSide<cr>",                                         desc = "NoNeckPain Left" },
            { "<leader>nr",  ":NoNeckPainToggleRightSide<cr>",                                        desc = "NoNeckPain Right" },

            -- LSP
            { "<leader>l",   group = "LSP" },
            { "<leader>lD",  "<cmd>lua vim.lsp.buf.declaration()<cr>",                                desc = "Go To Declaration" },
            { "<leader>lK",  "<cmd>Lspsaga hover_doc<cr>",                                            desc = "Hover Commands" },
            { "<leader>lN",  "<cmd>Lspsaga diagnostic_jump_prev<cr>",                                 desc = "Go To Previous Diagnostic" },
            { "<leader>lR",  "<cmd>Lspsaga rename<cr>",                                               desc = "Rename" },
            { "<leader>lW",  "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",                    desc = "Remove Workspace Folder" },
            { "<leader>la",  "<cmd>Lspsaga code_action<cr>",                                          desc = "Code Action" },
            { "<leader>ld",  "<cmd>lua vim.lsp.buf.definition()<cr>",                                 desc = "Go To Definition" },
            { "<leader>le",  "<cmd>Lspsaga show_line_diagnostics<cr>",                                desc = "Show Line Diagnostics" },
            { "<leader>li",  ":LspInfo<cr>",                                                          desc = "Connected Language Servers" },
            { "<leader>lk",  "<cmd>lua vim.lsp.buf.signature_help()<cr>",                             desc = "Signature Help" },
            { "<leader>ll",  "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", desc = "List Workspace Folders" },
            { "<leader>ln",  "<cmd>Lspsaga diagnostic_jump_next<cr>",                                 desc = "Go To Next Diagnostic" },
            { "<leader>lr",  "<cmd>lua vim.lsp.buf.references()<cr>",                                 desc = "References" },
            { "<leader>lt",  "<cmd>lua vim.lsp.buf.type_definition()<cr>",                            desc = "Type Definition" },
            { "<leader>lw",  "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",                       desc = "Add Workspace Folder" },

            -- Quit
            { "<leader>q",   group = "quit" },
            { "<leader>qa",  "<CMD>:wqa<CR>",                                                         desc = "Write Quit All" },
            { "<leader>qc",  "<CMD>:qa!<CR>",                                                         desc = "Quit Whithout Saving" },
            { "<leader>qq",  "<CMD>:wq<CR>",                                                          desc = "Quit Window" },

            -- Telescope
            { "<leader>t",   group = "Telescope" },
            { "<leader>tb",  ":Telescope buffers theme=ivy<cr>",                                      desc = "Telescope buffers" },
            { "<leader>tf",  ":Telescope find_files theme=ivy<cr>",                                   desc = "Telescope find_files" },
            { "<leader>tg",  ":Telescope live_grep theme=ivy<cr>",                                    desc = "Telescope live_grep" },
            { "<leader>to",  ":Telescope oldfiles theme=ivy<cr>",                                     desc = "Telescope oldfiles" },
            { "<leader>tr",  ":Telescope resume theme=ivy<cr>",                                       desc = "Telescope resume" },
            { "<leader>tw",  ":Telescope current_buffer_fuzzy_find theme=ivy<cr>",                    desc = "Fuzzy Find in File" },

            -- Window
            { "<leader>w",   group = "window" },
            { "<leader>ws",  "<CMD>:sp<CR>",                                                          desc = "Split" },
            { "<leader>wv",  "<CMD>:vsp<CR>",                                                         desc = "V-Split" },
            { "<leader>ww",  "<CMD>:w<CR>",                                                           desc = "Write Window" },

        })
    end
}
