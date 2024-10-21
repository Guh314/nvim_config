# Introduction

This a personal config, that I'm 100% sure will get big enough to weight as much as any distribution without meeting half of their functionalities.

It doesn't have a installation script.

For now it works if you have every dependency installed, the issue being there are one too many. Such as 3 C/C++ compilers.

TODO: Maybe find a name for this...

## Images

+ TODO: Add images.


# Installation

## Windows only

In case of a windows system, first insatall [Chocolatey](https://chocolatey.org/install) or [Scoop](https://scoop.sh/), then use it to install the following in admin mode.

### ripgrep

Fast regex search utility that will be used by Telescope to search file names and content.

It can be installed on Windows in Powershell using Chocolatey by entering the following:

```Powershell
choco install ripgrep
```

### Mingw

Way to get gcc and other gnu c utilities on windows.

It can be installed on Windows in Powershell using Chocolatey by entering the following:

```Powershell
choco install mingw
```

## Optional

### fd

Fast file search utility, speed file name search if propperly configured and used.

### Windows Installation

It can be installed on Windows in Powershell using Chocolatey by entering the following:

```Powershell
choco install fd
```

### Linux Installation

Can be installed through most package managers.

If not available consult the creator's [github](https://github.com/sharkdp/fd).

## General Dependencies

+ [Lua](https://www.lua.org/download.html).
+ [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md).
+ [Nodejs](https://nodejs.org/en).
+ [gcc](https://gcc.gnu.org/install/).
+ [zig](https://ziglang.org/).
+ [Lazygit](https://github.com/jesseduffield/lazygit).
+ Other C libraries as the error messages appear.

+ TODO: Reduce the ammount of C compiler's dependencies.

# References

+ [bibjaw99](https://github.com/bibjaw99/workstation/tree/master/.config/nvim)
+ [LazyVim](https://github.com/LazyVim/LazyVim/tree/main)


# Plugins

## General

+ [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)
+ [bufferline.nvim](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua)
+ [mini-icons.nvim](https://github.com/echasnovski/mini.icons)
+ [no-neck-pain.nvim](https://github.com/shortcuts/no-neck-pain.nvim)
+ [nvim-tree.nvim](https://github.com/nvim-tree/nvim-tree.lua)
+ [whichkey.nvim](https://github.com/folke/which-key.nvim)
+ [surround.nvim](https://github.com/kylechui/nvim-surround)

## Status Line

+ [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## File Search and Organization

+ [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
+ [oil.nvim](https://github.com/stevearc/oil.nvim)

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
+ [neorg.nvim]

## Colorschemes/Themes

+ [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
+ [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
+ [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim)

## Misc

+ [VimBeGood](https://github.com/ThePrimeagen/vim-be-good)


# Missing / Broken Stuff.

## Plugins 

### TreeSitter

Parsing breaks when handling a big php file with html tags and php and javascript code.

### Telescope

clangd error when trying to install telescope-fzf-native.nvim

### Markview.nvim

Marview.nvim not propperly displaying colors in normal mode using tokyonight-day in first load, switching colors and back fixes it. It may or may not be random.

## LSP

Elm formatter creates a frame that doesn't close when a file is written with a semantically incorrect syntax.

# TODO
- Propperly config neorg.
- Move no-neck-pain to toggles
- Config neorg under n for +notes.
- Lazy Load as much of the LSPs as possible to not slowdown neovim.
