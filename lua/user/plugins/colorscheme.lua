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
    -- style = "warm"
    style = "dark"
  }
  require(M.name).load()
end

return M

-- local M = {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
-- }
--
-- M.name = "tokyonight"
--
-- function M.config()
--   local status_ok, tokyonight = pcall(require, M.name)
--   if not status_ok then
--     vim.notify("tokyonight theme not found")
--     return
--   end
--
--   tokyonight.setup {
--     -- style = "moon"
--     -- style = "storm"
--     style = "night"
--   }
--   require(M.name).load()
-- end
--
-- return M
--
-- local M = {
--   "ellisonleao/gruvbox.nvim",
--   lazy = false,
--   priority = 1000,
-- }
--
-- M.name = "gruvbox"
--
-- function M.config()
--   local status_ok, gruvbox = pcall(require, M.name)
--   if not status_ok then
--     vim.notify("gruvbox theme not found")
--     return
--   end
--
--   gruvbox.setup {
--     -- style = "moon"
--     -- style = "storm"
--     -- style = "night"
--   }
--   require(M.name).load()
-- end
--
-- return M
