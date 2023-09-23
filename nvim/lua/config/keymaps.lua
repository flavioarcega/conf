-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":", { silent = true })
vim.keymap.set("n", "<C-d>", ":q<CR>", { silent = true })
vim.keymap.set("i", "<C-d>", "<ESC>:q<CR>", { silent = true })
vim.keymap.set("i", "qq", "<ESC>", { silent = true })
