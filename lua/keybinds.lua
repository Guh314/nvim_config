local map = vim.api.nvim_set_keymap

-- Keymaps without Leader --

-- Move line up and down in NORMAL and VISUAL modes
-- TODO: Think of a better choice of keymaps for this to use <C-(vim-motion)> to move between buffers in a window
map('n', '<C-j>', '<CMD>move .+1<CR>', { noremap = true, silent = false })
map('n', '<C-k>', '<CMD>move .-2<CR>', { noremap = true, silent = false })
map('x', '<C-k>', ":move '<-2<CR>gv=gv", { noremap = true, silent = false })
map('x', '<C-j>', ":move '>+1<CR>gv=gv", { noremap = true, silent = false })


-- Exit insert mode DoomEmacs Style
map('i', 'jk', '<Esc>', { noremap = true, silent = false })


-- Ident
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
