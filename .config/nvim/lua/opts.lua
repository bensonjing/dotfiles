vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8

vim.opt.number = true
vim.opt.hidden = true
vim.opt.signcolumn = "number"
vim.opt.ignorecase = true
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Auto formatting
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- Disable filetype indent 
vim.g.did_load_filtype = 1
vim.cmd "filetype plugin indent off"

-- No highlight search
-- vim.cmd "autocmd CmdlineEnter /,? :set hlsearch"
-- vim.cmd "autocmd CmdlineLeave /,? :set nohlsearch"

