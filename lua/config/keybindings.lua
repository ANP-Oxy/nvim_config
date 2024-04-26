vim.g.maplocalleader = ' '
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = false}



-- split navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)


-- enter normal mode quickly
map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)
map('t', 'jk','<C-\\><C-n>', opts)
map('t', 'kj','<C-\\><C-n>', opts)

-- open/close file explorer
map('n', '<leader>l', ':Lexplore<CR>', opts)


-- resize windows easily
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", {silent = true})
map("t", "<C-j>", "<C-\\><C-N><C-w>j", {silent = true})
map("t", "<C-k>", "<C-\\><C-N><C-w>k", {silent = true})
map("t", "<C-l>", "<C-\\><C-N><C-w>l", {silent = true})

-- open python terminal 
--map('n', '<Leader>i', ':vsplit term://ipython --no-confirm-exit<CR>', opts)
map('n', '<Leader>i', ':vsplit | terminal ipython<CR>a', opts)
