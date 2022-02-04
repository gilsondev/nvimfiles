local opts = { noremap = true, silent = true }
local mappings = {
  { "n", "<leader>t", [[<Cmd>TestNearest<CR>]], opts }, -- call test for function in cursor
  { "n", "<leader>tt", [[<Cmd>TestFile<CR>]], opts }, -- call test for current file
}

for _, m in pairs(mappings) do
  vim.api.nvim_set_keymap(unpack(m))
end
