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
