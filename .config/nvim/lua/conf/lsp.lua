require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

-- Mason

local lsp_list = {
  "clangd"
}
mason_lspconfig.setup {
  ensure_installed = lsp_list
}

-- LSP config 

local on_attach = function(_, bufnr)
  local opts = {
    noremap = true,
    silent = true,
    buffer = bufnr,
  }
end


for _, lsp in pairs(lsp_list) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
    on_attach = on_attach
  })
end

vim.fn.sign_define("DiagnosticSignError", { text = '🆇', texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = '⚠️', texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = 'ℹ️', texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = '', texthl = "DiagnosticSignHint" })

vim.diagnostic.config {
  underline = false,
  virtual_text = true,
  signs = true,
  severity_sort = true,
}
