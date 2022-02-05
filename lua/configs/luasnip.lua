local M = {}

function M.config()
  require("luasnip/loaders/from_vscode").lazy_load()

  -- Snippets to Django
  vim.cmd [[au BufRead,BufNewFile */admin.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */models.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */views.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */forms.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */urls.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */tests.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */tests/*.py set filetype=python.django]]
  vim.cmd [[au BufRead,BufNewFile */manage.py set filetype=python.django]]

  -- Snippets to Django REST Framework
  vim.cmd [[au BufRead,BufNewFile */serializers.py set filetype=python.drf]]
end

return M
