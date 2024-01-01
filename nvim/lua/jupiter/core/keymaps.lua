vim.g.mapleader = " "

local keymap = vim.keymap

-- window related
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- general purpose
keymap.set("n", "<leader>x", "gg0dG") -- clear page
keymap.set("n", "<leader>c", "0v$d") -- cut line
keymap.set("n", "<leader>p", "$p") -- paste line
