local keymap = vim.keymap.set

keymap("v", "<S-j>", ":m '>+1<CR>gv=gv")
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv")
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("n", "<Leader>w", ":w!<CR>")
keymap("n", "<Leader>q", ":q!<CR>")
keymap("n", "<Leader>x", ":x!<CR>")

keymap("n", "<C-n>", ":tabnew<CR>")
keymap("n", "<C-h>", ":tabnext<CR>")
keymap("n", "<C-l>", ":tabprevious<CR>")
