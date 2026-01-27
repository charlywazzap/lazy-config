-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Close buffers
-- keymap("n", "<S-q>", "<cmd>:bd<CR>", { silent = true, desc = "Close Current buffer" })

keymap("n", "<S-q>", function()
  Snacks.bufdelete()
end, { silent = true, desc = "Close Current buffer" })
-- Save buffers
keymap("n", "<leader>Bs", "<cmd>:w!<CR>", { silent = true, desc = "Save Current buffer" })
keymap("n", "<leader>WW", "<cmd>:w!<CR>", { silent = true, desc = "Save Current buffer" })
-- lazy
keymap("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

keymap("n", "<leader>cfp", "<cmd>let @+ = expand('%')<cr>", { desc = "Copy Full file Path" })
keymap("n", "<leader>crp", "<cmd>let @+ = expand('%:.')<cr>", { desc = "Corby Relative file Path" })

-- Move to window using the <ctrl> hjkl keys

-- Resize window using <ctrl> arrow keys
keymap("n", "<C wp>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap("n", "<C-Left>", "<Cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
keymap("n", "<leader>tt", function()
  require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" })
end, { desc = "Debug File (neotest DAP)" })
