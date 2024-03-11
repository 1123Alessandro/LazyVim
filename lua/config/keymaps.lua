-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local util = require("lazyvim.util")

map("n", ";", ":", { desc = "Enter command mode" })
map("n", "<A-i>", function()
  util.terminal(nil, { cwd = util.root() })
end)
map("t", "<A-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })

map("n", "<leader>of", "<cmd>let @+ = expand('%')<cr>")
map("n", "<leader>od", "<cmd>let @+ = expand('%:h')<cr>")
map("n", "<leader>fd", "<cmd>let @+ = expand('%:p:h')<cr>")
map("n", "<leader>ob", "<cmd>only<cr>")

map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>e", "<cmd>NvimTreeFindFile<cr>")
