local map = vim.keymap

vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { noremap = true, silent = true })

map.set("n", "<C-b>", ":buffers<CR>:buffer<Space>")
map.set("n", "te", ":tabedit")
map.set("n", "<Tab>", ":tabnext<CR>")
map.set("n", "<S-Tab>", ":tabprev<CR>")

map.set("n", "<ESC>", ":nohlsearch<CR>")

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
