return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local lspui = require("lspconfig.ui.windows")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        -- Auto Formatting
        vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

        --LspInfo Borders
        lspui.default_options.border = "double"

        -- Managing language servers individually
        -- pyright
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })

        -- tsserver
        lspconfig.ts_ls.setup({
            capabilities = capabilities,
        })

        -- zig zls
        lspconfig.zls.setup {
            -- Server-specific settings. See `:help lspconfig-setup`

            -- omit the following line if `zls` is in your PATH
            -- cmd = { '$HOME/zls-0.13.0/zig-out/bin/zls' },
            -- There are two ways to set config options:
            --   - edit your `zls.json` that applies to any editor that uses ZLS
            --   - set in-editor config options with the `settings` field below.
            --
            -- Further information on how to configure ZLS:
            -- https://github.com/zigtools/zls/wiki/Configuration
            settings = {
                zls = {
                    -- omit the following line if `zig` is in your PATH
                    -- zig_exe_path = '/path/to/zig_executable',
                }
            }
        }

        -- 	-- html
        -- 	lspconfig.html.setup({
        -- 		capabilities = capabilities,
        -- 	})

        -- configure emmet language server
        lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "htmlangular" },
        })

        -- Lua LS
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        -- 	-- CSS LS
        -- 	lspconfig.cssls.setup({
        -- 		capabilities = capabilities,
        -- 	})

        -- Elm LS
        lspconfig.elmls.setup({
            capabilities = capabilities,
        })
    end,
}
