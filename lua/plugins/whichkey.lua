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
        wk.register({
            b = {
                name = "+buffer",
                d = { "<CMD>:bdelete<CR>", "Delete Current Buffer" },
                n = { "<CMD>:bnext<CR>", "Next Buffer" },
                p = { "<CMD>:bprev<CR>", "Previous Buffer" },
                l = { "<CMD>:buffers<CR>", "List All Buffers" },
            },

            e = {
                name = "NvimTree",
                e = { ":NvimTreeToggle<cr>", "NvimTreeToggle" },
                f = { ":NvimTreeFocus<cr>", "NvimTreeFocus" },
                h = { ":e ~/<cr>", "NvimTreeHome" },
            },

            l = {
                name = "LSP",
                i = { ":LspInfo<cr>", "Connected Language Servers" },
                k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
                K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
                w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
                W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder" },
                l = {
                    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
                    "List Workspace Folders",
                },
                t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
                d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
                D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
                r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
                R = { "<cmd>Lspsaga rename<cr>", "Rename" },
                a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
                e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics" },
                n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
                N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
            },

            t = {
                name = "Telescope",
                f = { ":Telescope find_files theme=ivy<cr>", "Telescope find_files" },
                w = { ":Telescope current_buffer_fuzzy_find theme=ivy<cr>", "Fuzzy Find in File" },
                o = { ":Telescope oldfiles theme=ivy<cr>", "Telescope oldfiles" },
                g = { ":Telescope live_grep theme=ivy<cr>", "Telescope live_grep" },
                r = { ":Telescope resume theme=ivy<cr>", "Telescope resume" },
                b = { ":Telescope buffers theme=ivy<cr>", "Telescope buffers" },
            },

            q = {
                name = "+quit",
                a = { "<CMD>:wqa<CR>", "Write Quit All" },
                q = { "<CMD>:wq<CR>", "Quit Window" },
                c = { "<CMD>:qa!<CR>", "Quit Whithout Saving" },
            },

            w = {
                name = "+window",
                w = { "<CMD>:w<CR>", "Write Window" },
                v = { "<CMD>:vsp<CR>", "V-Split" },
                s = { "<CMD>:sp<CR>", "Split" },
            },
        }, { prefix = "<leader>" })
    end
}
