local g = vim.g
local o = vim.o

-- Use terminal colors
o.termguicolors = true

-- Update Screen Time
o.timeoutlen = 500
o.updatetime = 200

-- UI
o.number = true
o.relativenumber = true
o.cursorline = true
o.signcolumn = 'yes'
o.numberwidth = 5

-- Tabs and Spaces
o.expandtab = false
o.tabstop = 4
o.softtabstop = -1
o.wrap = true
o.textwidth = 600
o.shiftwidth = 0

o.clipboard = 'unnamedplus'


--Backup and Undo
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false


-- Case insensitive search
o.ignorecase = true
o.smartcase = true


o.history = 50


-- Splits conf
o.splitright = true
o.splitbelow = true


-- Map Leader
g.mapleader = ' '
g.maplocalleader = ' '


-- Neovide stuff
if g.neovide then
	-- Default use this.
	-- o.guifont = "Mononoki Nerd Font:h12"

	-- Ligatures
	o.guifont = "Maple Mono NF CN:h11"
	-- o.guifont = "0xProto Nerd Font:h11"

	-- g.neovide_transparency = 0.8
	-- g.transparency = 0.8
end
