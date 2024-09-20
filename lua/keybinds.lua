local map = vim.api.nvim_set_keymap

-- Keymaps without Leader --

-- Quit
map('n', '<C-Q>', ':q<CR>', { noremap = true, silent = false })


-- Mimic Shell Movement
map('i', '<C-E>', '<Esc>A', { noremap = true, silent = false })
map('i', '<C-A>', '<Esc>i', { noremap = true, silent = false })


-- Quit
map('n', '<C-Q>', '<CMD>q<CR>', { noremap = true, silent = false })


-- Move to last buffer
map('n', "''", '<CMD>b#<CR>', { noremap = true, silent = false })


-- vscode behaviour of making splits
map('n', '<C-\\>', '<CMD>vsplit<CR>', { noremap = true, silent = false })
map('n', '<A-\\>', '<CMD>vsplit<CR>', { noremap = true, silent = false })


-- Move line up and down in NORMAL and VISUAL modes
map('n', '<C-j>', '<CMD>move .+1<CR>', { noremap = true, silent = false })
map('n', '<C-k>', '<CMD>move .-2<CR>', { noremap = true, silent = false })
map('x', '<C-j>', ":move '>+1<CR>gv=gv", { noremap = true, silent = false })
map('x', '<C-k>', ":move '<-2<CR>gv=gv", { noremap = true, silent = false })

-- Exit insert move DoomEmacs Style
map('i', 'jk', '<Esc>', { noremap = true, silent = false })

-- Ident
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })


-- Moving bettween buffers in the same window
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
