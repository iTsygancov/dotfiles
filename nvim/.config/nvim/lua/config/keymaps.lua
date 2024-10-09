-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>")

-- Center cursor while scrolling the document
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- exit insert mode
map("i", "jk", "<Esc><Right>")

-- move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "so", ":sort<CR>")

map("v", "<C-j>", ":join<CR>")

-- map("i", "clc", "console.log()<Esc>i")
-- map("i", "cls", "className=''<Esc>i")

-- detele marks
map("n", "dma", ":delmarks a-z0-9<CR>", {
  desc = "Delete all marks",
})
map("n", "dmm", "ddP", {
  desc = "Delete mark on the current line",
})

-- Exit from Neovim
map("n", "Q", "<cmd>qa!<CR>")

map("n", "<leader>n", "<cmd>BufferLineMovePrev<cr>")
map("n", "<leader>m", "<cmd>BufferLineMoveNext<cr>")

map("i", "<C-l>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
