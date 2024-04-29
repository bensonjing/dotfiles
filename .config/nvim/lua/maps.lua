local map = vim.keymap

vim.g.mapleader = " "

map.set("n", "<c-h>", "<c-w>h")
map.set("n", "<c-l>", "<c-w>l")
map.set("n", "<c-k>", "<c-w>k")
map.set("n", "<c-j>", "<c-w>j")

map.set("n", "<C-b>", ":buffers<CR>:buffer<Space>")
map.set("n", "te", ":tabedit")
map.set("n", "<Tab>", ":tabnext<CR>")
map.set("n", "<S-Tab>", ":tabprev<CR>")

map.set("n", "<ESC>", ":nohlsearch<CR>")

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
