local M = {}

function M.config()
  vim.g.tokyonight_style = "night"
  require("colorizer").setup()
end

return M
