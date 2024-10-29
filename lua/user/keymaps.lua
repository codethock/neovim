-- Define the keymap table
local keymap = setmetatable({}, {
  __index = function(_, mode)
    return function(keys, action, opts)
      vim.api.nvim_set_keymap(mode, keys, action, opts)
    end
  end
})

-- Define options
local opts = { noremap = true, silent = true }

-- Start Custom Keymaps --
-- keymap.n("<leader>e", "<cmd>Ex<CR>", opts)

-- Normal mode

-- Map <Esc> to jj in insert mode
keymap.i("jj", "<Esc>", opts)

-- Better window navigation
keymap.n("<Left>", "<C-w>h", opts) -- Navigate to the left split 
keymap.n("<Down>", "<C-w>j", opts) -- Navigate to the bottom split 
keymap.n("<Up>", "<C-w>k", opts) -- Navigate to the top split 
keymap.n("<Right>", "<C-w>l", opts) -- Navigate to the right split 

-- Resize with arrows
keymap.n("<C-Up>", "<cmd>resize +2<cr>", opts) -- Increase window horizontally 
keymap.n("<C-Down>", "<cmd>resize -2<cr>", opts) -- Shrink window horizontally 
keymap.n("<C-Left>", "<cmd>:vertical resize +2<cr>", opts) -- Increase window vertically 
keymap.n("<C-Right>", "<cmd>:vertical resize -2<cr>", opts) -- Shrink window vertically 

-- Navigate buffers
keymap.n("<S-l>", "<cmd>bnext<cr>", opts) -- Next buffer 
keymap.n("<S-h>", "<cmd>bprevious<cr>", opts) -- Previous buffer 

-- Clear highlights
keymap.n("<leader>h", "<cmd>:noh<cr>", opts) -- Clear highlights 

-- Keep cursor in place while doing "J" command
keymap.n("J", "mzJ`z", opts)

-- Keep cursor in place while jumping
keymap.n("<C-d>", "<C-d>zz", opts)
keymap.n("<C-u>", "<C-u>zz", opts)

-- Remap <C-u> and <C-d> to 'Down' and 'Up' 
-- keymap.n("<C-u>", "<S-[>", opts)
-- keymap.n("<C-d>", "<S-]>", opts)

-- Keep cursor in center while jumping through searches
keymap.n("n", "nzzzv", opts)
keymap.n("N", "Nzzzv", opts)

-- Better paste
keymap.x("<leader>p", [["_dP]], opts)

-- Fast word replace
keymap.n("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Insert Mode --

-- Visual Mode --

-- Move highlighted lines up and down
keymap.v("J", ":m '>+1<CR>gv=gv", opts)
keymap.v("K", ":m '<-2<CR>gv=gv", opts)

-- Stay in indent mode
keymap.v("<", "<gv", opts) -- Indent to the left
keymap.v(">", ">gv", opts) -- Indent to the right

-- Shorthand for yank to system clipboard
keymap.n("<leader>y", [["+y]], opts)
keymap.n("<leader>Y", [["+Y]], opts)

-- Plugins --

-- NvimTree
keymap.n("<leader>e", "<cmd>NvimTreeToggle<cr>", opts) -- Toggle explorer

-- FIXkeymap.n("<leader>f", opts) = sections.f
keymap.n("<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- Find files
keymap.n("<leader>ft", "<cmd>Telescope live_grep<cr>", opts) -- Find words
keymap.n("<leader>fp", "<cmd>Telescope projects<cr>", opts) -- Find projects
keymap.n("<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- Find buffers

-- Comment
keymap.n("<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap.v("<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)


