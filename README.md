<h1 align="center">Nvimfiles</h1>

<div align="center"><p>
    <a href="https://github.com/gilsondev/nvimfiles/pulse">
      <img src="https://img.shields.io/github/last-commit/gilsondev/nvimfiles?color=%4dc71f&label=Last%20Commit&logo=github&style=flat-square"/>
    </a>
    <a href="https://github.com/gilsondev/nvimfiles/blob/main/LICENSE">
      <img src="https://img.shields.io/github/license/gilsondev/nvimfiles?label=License&logo=GNU&style=flat-square"/>
	</a>
    <a href="https://neovim.io/">
      <img src="https://img.shields.io/badge/Neovim-0.6+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white"/>
    </a>
</p>
</div>

<p align="center">
	This project is a fork of <a href="https://github.com/kabinspace/AstroVim">AstroVim</a> and inspired too in <a href="https://github.com/ellisonleao/neovimfiles">neovimfiles</a> with some custom configs to my workflow
</p>
	
## 🌟 Preview
![Preview1](./utils/media/preview1.png)
![Preview2](./utils/media/preview2.png)
![Preview33](./utils/media/preview3.png)
	
## ⚡ Requirements
* [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
* [Neovim 0.6+](https://github.com/neovim/neovim/releases/tag/v0.6.1)
	
## 🛠️ Installation
### Linux
#### Make a backup of your current nvim folder
```
mv ~/.config/nvim ~/.config/nvimbackup
```
#### Clone the repository
```
git clone https://github.com/gilsondev/nvimfiles ~/.config/nvim
nvim +PackerSync
```

## 📦 Setup

#### Install LSP

Enter `:LSPInstall` followed by the name of the server you want to install<br>
Example: `:LSPInstall pyright`

#### Install language parser

Enter `:TSInstall` followed by the name of the language you want to install<br>
Example: `:TSInstall python`

#### Manage plugins

Run `:PackerClean` to remove any disabled or unused plugins<br>
Run `:PackerSync` to update and clean plugins<br>

#### Update

Run `:NvimUpdate` to get the latest updates from the repository<br>

## ✨ Features

- File explorer with [Nvimtree](https://github.com/kyazdani42/nvim-tree.lua)
- Autocompletion with [Cmp](https://github.com/hrsh7th/nvim-cmp)
- Git integration with [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Git commands with [Fugitive](https://github.com/tpope/vim-fugitive)
- Statusline with [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- Terminal with [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
- Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Formatting and linting with [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)
- Run tests with [Vim Test](https://github.com/vim-test/vim-test)
- Insert HTML tags quickly with [Emmet](https://github.com/mattn/emmet-vim)
- Preview markdown files with [glow](https://github.com/ellisonleao/glow.nvim)
- Multiple cursor columns with [Vim Visual Multi](https://github.com/mg979/vim-visual-multi)

## ⚙️ Configuration

[User](https://github.com/gilsondev/nvimfiles/blob/main/lua/user) directory is given for custom configuration

```lua
-- Set colorscheme
colorscheme = "tokyonight",

-- Add plugins
plugins = {
  { "andweeb/presence.nvim" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
},

-- On/off virtual diagnostics text
virtual_text = true,

-- Set options
set.relativenumber = true

-- Set key bindings
map("n", "<C-s>", ":w!<CR>", opts)

-- Set autocommands
vim.cmd [[
  augroup packer_conf
    autocmd!
    autocmd bufwritepost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Add formatters and linters
-- https://github.com/jose-elias-alvarez/null-ls.nvim
null_ls.setup {
  debug = false,
  sources = {
    -- Set a formatter
    formatting.rufo,
    -- Set a linter
    diagnostics.rubocop,
  },
  -- NOTE: You can remove this on attach function to disable format on save
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    end
  end,
}
```

## 🗒️ Note

[Mappings](https://github.com/gilsondev/nvimfiles/blob/main/utils/mappings.txt) file is given to learn about the default key bindings

## ⭐ Credits

Sincere appreciation to the following repositories, plugin authors and the entire neovim community out there that made the development of AstroVim possible.

- [Plugins](https://github.com/gilsondev/nvimfiles/blob/main/utils/plugins.txt)
- [NvChad](https://github.com/NvChad/NvChad)
- [LunarVim](https://github.com/LunarVim)
- [CosmicVim](https://github.com/CosmicNvim/CosmicNvim)
- [AstroVim](https://github.com/kabinspace/AstroVim)

<div align="center" id="madewithlua">
	
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blue.svg?style=for-the-badge&logo=lua)](https://lua.org)

</div>
