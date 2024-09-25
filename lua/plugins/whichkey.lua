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

            -- Nightfox
            { "<leader>cn",  group = "Nightfox" },
            { "<leader>cnd", ":colorscheme dayfox<CR>",                                               desc = "Dayfox" },
            { "<leader>cne", ":colorscheme nordfox<CR>",                                              desc = "Nordfox" },
            { "<leader>cnm", ":colorscheme dawnfox<CR>",                                              desc = "Dawnfox" },
            { "<leader>cnn", ":colorscheme nightfox<CR>",                                             desc = "Nightfox" },
            { "<leader>cnr", ":colorscheme terafox<CR>",                                              desc = "Terafox" },
            { "<leader>cnt", ":colorscheme duskfox<CR>",                                              desc = "Duskfox" },
            { "<leader>cnc", ":colorscheme carbonfox<CR>",                                            desc = "Carbonfox" },

            -- Tokyonight
            { "<leader>ct",  group = "Tokyonight" },
            { "<leader>ctd", ":colorscheme tokyonight-day<CR>",                                       desc = "Tokyonight-day" },
            { "<leader>ctm", ":colorscheme tokyonight-moon<CR>",                                      desc = "Tokyonight-moon" },
            { "<leader>ctn", ":colorscheme tokyonight-night<CR>",                                     desc = "Tokyonight-night" },


            -- NvimTree
            { "<leader>e",   group = "NvimTree" },
            { "<leader>ee",  ":NvimTreeToggle<cr>",                                                   desc = "NvimTreeToggle" },
            { "<leader>ef",  ":NvimTreeFocus<cr>",                                                    desc = "NvimTreeFocus" },
            { "<leader>eh",  ":e ~/<cr>",                                                             desc = "NvimTreeHome" },


            -- File - Telescope plugin
            { "<leader>f",   group = "File" },
            { "<leader>fb",  ":Telescope buffers<cr>",                                                desc = "Telescope buffers" },
            { "<leader>ff",  ":Telescope find_files<cr>",                                             desc = "Telescope find_files" },
            { "<leader>fg",  ":Telescope live_grep<cr>",                                              desc = "Telescope live_grep" },
            { "<leader>fo",  ":Telescope oldfiles<cr>",                                               desc = "Telescope oldfiles" },
            { "<leader>fr",  ":Telescope resume<cr>",                                                 desc = "Telescope resume" },
            { "<leader>fw",  ":Telescope current_buffer_fuzzy_find<cr>",                              desc = "Fuzzy Find in File" },


            -- Git - Lazygit plugin
            { "<leader>g",   group = "Git" },
            { "<leader>gg",  ":LazyGit<cr>",                                                          desc = "LazyGit Toggle" },
            { "<leader>gc",  ":LazyGitFilter<cr>",                                                    desc = "LazyGit Filter" },
            { "<leader>gf",  ":LazyGitCurrentFile<cr>",                                               desc = "LazyGit CurrentFile" },
            { "<leader>gr",  ":LazyGitFilterCurrentFile<cr>",                                         desc = "LazyGit Filter" },


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


            -- NoNeckPain
            { "<leader>n",   group = "NoNeckPain" },
            { "<leader>nn",  ":NoNeckPain<cr>",                                                       desc = "NoNeckPain Toggle" },
            { "<leader>nu",  ":NoNeckPainWidthUp<cr>",                                                desc = "NoNeckPain Width Up" },
            { "<leader>nd",  ":NoNeckPainWidthDown<cr>",                                              desc = "NoNeckPain Width Down" },
            { "<leader>nl",  ":NoNeckPainToggleLeftSide<cr>",                                         desc = "NoNeckPain Left" },
            { "<leader>nr",  ":NoNeckPainToggleRightSide<cr>",                                        desc = "NoNeckPain Right" },


            -- Org Mode
            { "<leader>o",   group = "Org" },


            -- Terminal - ToggleTerm
            { "<leader>t",   group = "Toggles" },
            { "<leader>tt",  ":ToggleTerm direction=float<cr>",                                       desc = "Terminal" },
            { "<leader>tg",  ":LazyGit<cr>",                                                          desc = "LazyGit" },
            { "<leader>tl",  ":Lazy<cr>",                                                             desc = "Lazy" },

            -- Tabs - TabMotion
            { "<leader>T",   group = "Tabs" },
            { "<leader>Tp",  "<Cmd>BufferLineTogglePin<CR>",                                          desc = "Toggle Pin" },
            { "<leader>TP",  "<Cmd>BufferLineGroupClose ungrouped<CR>",                               desc = "Delete Non-Pinned Buffers" },
            { "<leader>To",  "<Cmd>BufferLineCloseOthers<CR>",                                        desc = "Delete Other Buffers" },
            { "<leader>Tr",  "<Cmd>BufferLineCloseRight<CR>",                                         desc = "Delete Buffers to the Right" },
            { "<leader>Tl",  "<Cmd>BufferLineCloseLeft<CR>",                                          desc = "Delete Buffers to the Left" },
            { "<leader>Tp",  "<cmd>BufferLineCyclePrev<cr>",                                          desc = "Prev Buffer" },
            { "<leader>Tn",  "<cmd>BufferLineCycleNext<cr>",                                          desc = "Next Buffer" },
            { "<S-h>",       "<cmd>BufferLineCyclePrev<cr>",                                          desc = "Prev Buffer" },
            { "<S-l>",       "<cmd>BufferLineCycleNext<cr>",                                          desc = "Next Buffer" },
            { "[b",          "<cmd>BufferLineCyclePrev<cr>",                                          desc = "Prev Buffer" },
            { "]b",          "<cmd>BufferLineCycleNext<cr>",                                          desc = "Next Buffer" },
            { "[B",          "<cmd>BufferLineMovePrev<cr>",                                           desc = "Move buffer prev" },
            { "]B",          "<cmd>BufferLineMoveNext<cr>",                                           desc = "Move buffer next" },

            -- Window
            { "<leader>w",   group = "window" },
            { "<leader>ws",  "<CMD>:sp<CR>",                                                          desc = "Split" },
            { "<leader>wv",  "<CMD>:vsp<CR>",                                                         desc = "V-Split" },
            { "<leader>ww",  "<CMD>:w<CR>",                                                           desc = "Write Window" },
        })
    end
}
