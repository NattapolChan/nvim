vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }}
  use { "catppuccin/nvim", as = "catppuccin" }
  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use('nvim-treesitter/playground')
  --[[use('theprimeagen/harpoon')]]--
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    {'neovim/nvim-lspconfig'},             
    {                                     
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'},
    {'hrsh7th/nvim-cmp'},  
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},   
  }
}
use {
  'dinhhuy258/git.nvim'
}
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})
use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'
use "lukas-reineke/indent-blankline.nvim"
use {'akinsho/git-conflict.nvim', tag = "*", config = function()
  require('git-conflict').setup()
end}
use({
  "MunifTanjim/nougat.nvim",
})
end)
