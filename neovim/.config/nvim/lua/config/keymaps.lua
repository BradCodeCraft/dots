-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Move selected items vertically with Shift + j/k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected item down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected item up" })

-- Move selected items horizontally with </>
vim.keymap.set("v", "<", "<gv", { desc = "Move selected item left" })
vim.keymap.set("v", ">", ">gv", { desc = "Move selected item right" })

-- Put next/previous search item at the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
