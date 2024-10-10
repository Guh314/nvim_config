# Introduction

This is a personal config, that I'm 100% sure will get big enough to weight as much as any distribution without meeting half of their functionalities.

It doesn't have a installation script.

For now it works if you have every dependency installed, the issue being there are one too many. Such as 3 C/C++ compilers.


## Images

+ TODO: Add images.



# Insatallation

## Windows only

In case of a windows system, first insatall [Chocolatey](https://chocolatey.org/install) or [Scoop](https://scoop.sh/), then use to install the following:

### ripgrep

Fast regex search utility that will be used by Telescope to search file names and content.
Can be installed on Windows in Powershell using the following:

`choco install ripgrep`


## Optional

### fd

Fast file search utility, speed file name search if propperly configured and used.

### Windows Installation

Can be installed on Windows in Powershell using the following:

`choco install fd`

### Linux Installation

Can be installed through most package managers.
If not available consult the creator's [github](https://github.com/sharkdp/fd).


## General Dependencies

+ [Lua](https://www.lua.org/download.html).
+ [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md).
+ [Nodejs](https://nodejs.org/en).
+ gcc
+ cc
+ zig
+ Lazygit
+ mingw
+ Other C libraries as the error messages appear.


## Installation Order

1. [Neovim](https://neovim.io/)
2. [Lazy.nvim](https://github.com/folke/lazy.nvim)
3. [mason.nvim](https://github.com/williamboman/mason.nvim)
4. [lspconfig.nvim](https://github.com/neovim/nvim-lspconfig)
5. [TreeSitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)
6. The rest can be installed in any order.



# References

+ [bibjaw99](https://github.com/bibjaw99/workstation/tree/master/.config/nvim)
+ [lspconfig](https://github.com/neovim/nvim-lspconfig)
+ [LazyVim](https://github.com/LazyVim/LazyVim/tree/main)



# Plugins

## General

+ [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)
+ [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
+ [bufferline.nvim](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua)
+ [mini-icons.nvim](https://github.com/echasnovski/mini.icons)
+ [no-neck-pain.nvim](https://github.com/shortcuts/no-neck-pain.nvim)
+ [nvim-tree.nvim](https://github.com/nvim-tree/nvim-tree.lua)
+ [whichkey.nvim](https://github.com/folke/which-key.nvim)
+ [surround.nvim](https://github.com/kylechui/nvim-surround)


## File Search

+ [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)


##  Syntax Highlight

+ [TreeSitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)


## LSP

+ [lspconfig.nvim](https://github.com/neovim/nvim-lspconfig)
+ [lsp_saga.nvim](https://github.com/nvimdev/lspsaga.nvim)
+ [mason.nvim](https://github.com/williamboman/mason.nvim)


## Code Completion

+ [cmp.nvim](https://github.com/hrsh7th/nvim-cmp)


## GIT

+ [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)


## Terminal

+ [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)


## Note Taking

+ [orgmode.nvim](https://github.com/nvim-orgmode/orgmode)
+ [markview.nvim](https://github.com/OXY2DEV/markview.nvim)


## Colorschemes/Themes

+ [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
+ [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)


## Misc

+ [VimBeGood](https://github.com/ThePrimeagen/vim-be-good)



# Missing / Broken Stuff.

## Plugins 

### TreeSitter

+ Parsing breaks when handling a big php file with html tags and php and javascript code.

### Telescope

+ clangd error when trying to install telescope-fzf-native.nvim

### Markview.nvim

+ Marview.nvim not propperly displaying colors in normal mode using tokyonight-day in first load, switching colors and back fixes it. It may or may not be random.

### cmp.nvim

+ Not working on any language with any LSP.


## LSP

### Bugs

+ Elm formatter creates a frame that doesn't close when a file is written with a semantically incorrect syntax.
