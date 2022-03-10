local M = {}

function M.config()
  vim.g.nord_contrast = true

  require('nord').set()
  require("colorizer").setup()
end

return M
