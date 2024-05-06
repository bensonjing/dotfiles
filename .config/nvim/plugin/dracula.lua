vim.api.nvim_create_autocmd('ColorScheme', {
	pattern = '*',
	callback = function()
		vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
	end,
})
local dracula = require('dracula') 
dracula.setup({
  transparent_bg = true, 
})
vim.cmd('colorscheme dracula')
