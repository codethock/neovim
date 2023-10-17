local M = {
  "nvim-treesitter/nvim-treesitter"
}

function M.config()
  local status_ok, _ = pcall(require, "nvim-treesitter")
  if not status_ok then
    vim.notify("Treesitter not found")
    return
  end

  require "nvim-treesitter.configs".setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
    auto_install = true,
    highlight = {
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    }
  }  
end

return M
