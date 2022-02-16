local M = {}

function M.config()
  local status_ok, zenmode = pcall(require, "zen-mode")
  if not status_ok then
    return 
  end
  zenmode.setup {
    window = {
      backdrop = .50,
      width = .50
    },
    plugins = {
      options = { enabled = true },
      tmux = { enabled = false },
      twilight = { enabled = true }
    }
  }
end

return M
