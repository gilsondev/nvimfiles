local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local set = vim.opt

local config = {

  -- Set colorscheme
  colorscheme = "nord",

  -- Add plugins
  plugins = {
  },

  -- On/off virtual diagnostics text
  virtual_text = true,

  -- Disable default plugins
  enabled = {
    nvim_tree = true,
    lualine = true,
    lspsaga = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },
}

-- Other configs
vim.g.python2_host_prog = vim.fn.expand("~/.pyenv/versions/3.8.6/bin/python")
vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/versions/3.8.6/bin/python")

-- Set options
set.relativenumber = true
set.colorcolumn = "80,110"

-- Set key bindings
map("n", "<C-s>", ":w!<CR>", opts)

-- Set autocommands
vim.cmd [[
  augroup packer_conf
    autocmd!
    autocmd bufwritepost plugins.lua source <afile> | PackerSync
  augroup end
]]

return config
