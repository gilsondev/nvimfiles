local M = {}

function M.config()
  require("luasnip/loaders/from_vscode").lazy_load()

  -- Snippets to Django Templates
  vim.cmd [[au BufRead,BufNewFile */templates/*.html set filetype=htmldjango]]
  vim.cmd [[au BufRead,BufNewFile */templates/**/*.html set filetype=htmldjango]]
end

return M
