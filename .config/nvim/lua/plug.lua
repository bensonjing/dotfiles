-- lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- theme 
  'Mofiqul/dracula.nvim', 

  -- LSP 
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',

  -- Autocomplete
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'windwp/nvim-autopairs',

  -- treesitter 
  'nvim-treesitter/nvim-treesitter',

  -- file explorer 
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- misc 
  'lewis6991/gitsigns.nvim',
}
local opts = {}
require('lazy').setup(plugins, opts)

