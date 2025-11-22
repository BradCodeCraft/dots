-- Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>", { desc = "Clear search highlight" })

-- Move windows with Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Move selected items vertically with Shift + j/k
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selected item down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selected item up" })

-- Move selected items horizontally with </>
vim.keymap.set("v", "<", "<gv", { desc = "Move selected item left" })
vim.keymap.set("v", ">", ">gv", { desc = "Move selected item right" })

-- Put next/previous search item at the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
