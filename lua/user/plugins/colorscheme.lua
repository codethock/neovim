local M = {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
}

M.name = "onedark"

function M.config()
  local status_ok, onedark = pcall(require, M.name)
  if not status_ok then
    vim.notify("onedark theme not found")
    return
  end

  onedark.setup {
    style = "warm"
  }
  require(M.name).load()
end

return M

