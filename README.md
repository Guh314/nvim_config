# Introduction

This is a personal config, that I'm 100% sure will get big enough to weight as much as any distribution without meeting half of their functionalities.

It doesn't have a installation script.

And has some ordering issues.

## Images

+ TODO: Add images.


# Insatall Before

## Windows only

In case of a windows system, first insatall [Chocolatey](https://chocolatey.org/install) or [Scoop](https://scoop.sh/), then use to install the following:

+ ripgrep
+ fd

## General Dependencies

+ lua
+ node
+ gcc
+ cc
+ zig
+ Lazygit
+ mingw
+ Other C libraries as the error messages appear.

# Installation Order

1. [Neovim](https://neovim.io/)
2. [Lazy.nvim](https://github.com/folke/lazy.nvim)
3. [mason.nvim](https://github.com/williamboman/mason.nvim)
4. [lspconfig.nvim](https://github.com/neovim/nvim-lspconfig)
5. [TreeSitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)
6. The rest can be installed in any order.


# References

+ bibjaw99: [Github link](https://github.com/bibjaw99/workstation/tree/master/.config/nvim)
+ lspconfig: [Github link](https://github.com/neovim/nvim-lspconfig)
+ LazyVim: [Github link](https://github.com/LazyVim/LazyVim/tree/main)

# Plugins

+ General
    + [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)
    + [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
    + [bufferline.nvim](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua
    + [mini-icons.nvim](https://github.com/echasnovski/mini.icons)
    + [no-neck-pain.nvim](https://github.com/shortcuts/no-neck-pain.nvim)
    + [nvim-tree.nvim](https://github.com/nvim-tree/nvim-tree.lua)
    + [whichkey.nvim](https://github.com/folke/which-key.nvim)

+ File Search
    + [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

+ Syntax Highlight
    + [TreeSitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)

+ LSP
    + [lspconfig.nvim](https://github.com/neovim/nvim-lspconfig)
    + [lsp_saga.nvim](https://github.com/nvimdev/lspsaga.nvim)
    + [mason.nvim](https://github.com/williamboman/mason.nvim)

+ Code Completion
    + [cmp.nvim](https://github.com/hrsh7th/nvim-cmp)

+ GIT
    + [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)

+ Terminal
    + [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)

+ Note Taking
    + [orgmode.nvim](https://github.com/nvim-orgmode/orgmode)
    + [markview.nvim](https://github.com/OXY2DEV/markview.nvim)

+ Colorschemes
    + [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
    + [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)


# Missing / Broken Stuff.

## AutoComplete.

+ Javascript.
+ Typescript.
+ TSX.
+ Elm.
+ HTML.
+ CSS.

## LSP

### Missing

+ HTML.
+ CSS.
+ Tailwindcss.
+ Svelte.

### Bugs

+ Elm formatter creates a frame that doesn't close when a file is written with a semantically incorrect syntax.

## TreeSitter

+ Parsing breaks when handling a big php file with html tags and php and javascript code.

## Telescope

+ clangd error when trying to install telescope-fzf-native.nvim

## Markview.nvim

+ marview.nvim not propperly displaying colors in normal mode using tokyonight-day in first load, switching colors and back fixes it. It may or may not be random.
