local M = {}

function M.config()
end

vim.cmd [[au BufRead,BufNewFile playbook.yml set filetype=yaml.ansible]]
vim.cmd [[au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible]]
vim.cmd [[au BufRead,BufNewFile roles/**/*.yml set filetype=yaml.ansible]]

return M
