-- Don't know why declaring this here, inside a folder named core made it suddenly work, wasn't working one folder up.
-- Now I know it's just a indirection.
require("core.lazy")

vim.cmd [[colorscheme tokyonight-day]]

-- Setting it here, there is a better way that I still don't know.
require('cmp').setup({
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- For luasnip users.
        { name = "buffer" },
    }
})
