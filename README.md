# lalit64/embark.nvim

## A neovim theme for the ambitious
![preview github](https://user-images.githubusercontent.com/71196912/118175481-27755c80-b3fe-11eb-9d70-85a9f936c33d.png)

## 🌠 Features

embark.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [WhichKey](https://github.com/liuchengxu/vim-which-key)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

+ Added functions for live theme switching without the need to restart NeoVim

## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'lalit64/embark.nvim'
```

```lua
-- If you are using Packer
use 'lalit64/embark.nvim'
```

## Usage

Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme embark
```

```lua
--Lua:
require('embark').set()
```

To enable the `embark` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'embark'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration


| Option                            | Default     | Description                                                                                                                                                     |
| --------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| embark_italic_comments            | `false`     | Make comments italic                                                                                                                                            |
| embark_italic_keywords            | `false`     | Make keywords italic                                                                                                                                            |
| embark_italic_functions           | `false`     | Make functions italic                                                                                                                                           |
| embark_italic_variables           | `false`     | Make variables and identifiers italic                                                                                                                           |
| embark_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| embark_borders                    | `false`     | Enable the border between verticaly split windows visable
| embark_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background

```lua
-- Example config in lua
vim.g.embark_italic_comments = true
vim.g.embark_italic_keywords = true
vim.g.embark_italic_functions = true
vim.g.embark_italic_variables = false
vim.g.embark_contrast = true
vim.g.embark_borders = false 
vim.g.embark_disable_background = false

-- Load the colorscheme
require('embark').set()
```

```vim
" Example config in Vim-Script
let g:embark_italic_comments = true
let g:embark_italic_keywords = true
let g:embark_italic_functions = true
let g:embark_italic_variables = false
let g:embark_contrast = true
let g:embark_borders = false 
let g:embark_disable_background = false

-- Load the colorsheme
colorscheme embark
```

