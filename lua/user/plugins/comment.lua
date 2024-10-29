-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
local M = {
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  lazy = false,

}

function M.config()
local ft = require('Comment.ft')
    -- Set both line and block commentstring
    ft.set('vex', {'//%s', '/*%s*/'})
end

-- 1. Using set function
-- Set only line comment
-- .set('vex', '//%s')

-- 2. Metatable magic

-- ft.javascript = {'//%s', '/*%s*/'}
-- ft.yaml = '#%s'

-- Multiple filetypes
-- ft({'go', 'rust'}, ft.get('c'))
-- ft({'toml', 'graphql'}, '#%s')

return M



