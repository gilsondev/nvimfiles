local M = {}

function M.config()
  local g = vim.g
  local cmd = vim.cmd

  g.user_emmet_install_global = 0
  g.user_emmet_mode = 'in'
  g.user_emmet_expandabbr_key = '<C-y>'

  cmd [[autocmd FileType html,htmldjango,jsx,css EmmetInstall]]
end

return M
