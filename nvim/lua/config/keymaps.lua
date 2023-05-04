-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":", { silent = true })
vim.keymap.set("n", "<C-d>", ":q<CR>", { silent = true })
vim.keymap.set("i", "<C-d>", "<ESC>:q<CR>", { silent = true })
vim.keymap.set("i", "qq", "<ESC>", { silent = true })

vim.keymap.set({ "n", "v" }, "K", "5kzz", { noremap = true, desc = "Up faster" })
vim.keymap.set({ "n", "v" }, "J", "5jzz", { noremap = true, desc = "Down faster" })
