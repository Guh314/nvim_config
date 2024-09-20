# Introduction
    +TODO: Add an introduction.
## Images
    + TODO: Add images.


# Insatall Before

    + Chocolatey ( in case of Windows )
    + ripgrep
    + fd
    + lua
    + node
    + mingw
    + gcc
    + cc
    + Other C libraries as the error messages appear.


# Installation Order

    1. Lazy.nvim
    2. mazon.nvim
    3. lspconfig.nvim
    4. TreeSitter.nvim
    5. The rest is order indepedent.


# References

    + bibjaw99: [Github link](https://github.com/bibjaw99/workstation/tree/master/.config/nvim)
    + lspconfig: [Github link](https://github.com/neovim/nvim-lspconfig)


# Plugins

## General Plugins

    1. cmp.lua
    2. dashboard.lua
    3. lualine.lua
    4. markview.lua
    5. mini-icons.lua
    6. nightfox.lua
    7. no-neck-pain.lua
    8. nvim-tree.lua
    9. org.lua
    10. telescope.lua
    11. tokyonight.lua
    12. treesitter.lua
    13. whichkey.lua

## LSP Plugins

    1. lspconfig.lua
    2. lsp_saga.lua
    3. mason.lua


# Missing / Broken Stuff.

## AutoComplete.

    + Javascript.
    + Typescript.
    + TSX.
    + Elm.
    + HTML.
    + CSS.

## LSP

### Missing:

    + HTML.
    + CSS.
    + Tailwindcss.
    + Svelte.

### Errors:

    + Random clang error that appears sometimes... It's presence may be completely random.

## TreeSitter

    + Parsing breaks when handling a php file with html tags and php and javascript code.

## Orgmode

    + Correct the now non-existant TreeSitter dependency.
