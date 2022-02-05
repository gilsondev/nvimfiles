local M = {}
function M.config()
  -- Formatting and linting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim
  local status_ok, null_ls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  -- Check supported formatters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  local formatting = null_ls.builtins.formatting

  -- Check supported linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  local diagnostics = null_ls.builtins.diagnostics

  -- CHeck supported code actions
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code-actions
  local code_actions = null_ls.builtins.code_actions

  null_ls.setup {
    debug = false,
    sources = {
      -- Set a formatter
      formatting.rufo,
      -- Python formatter
      formatting.black,
      formatting.isort,
      formatting.djhtml,
      -- Terraform formatters
      formatting.terraform_fmt.with({
        filetypes = { 'terraform', 'tf', 'hcl' }
      }),
      -- Prettier formatter
      formatting.prettier.with({
        filetypes = { 'json', 'yaml', 'markdown', 'toml' }
      }),
      -- JSON formatter,
      formatting.json_tool,
      -- Set a linter
      -- diagnostics.flake8,
      diagnostics.pylint,
      -- Set code actions
      code_actions.gitsigns,
    },
    -- NOTE: You can remove this on attach function to disable format on save
    on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
      end
    end,
  }
end

return M
