local M = {}

function M.config()
  vim.g.tokyonight_style = "night"

  vim.cmd [[highlight IndentBlanklineChar guifg=#414868 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineContextChar guifg=#9AA5CE gui=nocombine]]

  require("colorizer").setup()
end

return M
