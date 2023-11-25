local M = {
  "norcalli/nvim-colorizer.lua"
}

function M.config()
  local status_ok, _ = pcall(require, M)
  if not status_ok then
    vim.notify("Colorizer not found")
    return
  end
end

return M
