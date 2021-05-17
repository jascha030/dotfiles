vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'marko-cerovac/material.nvim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } 
	use 'onsails/lspkind-nvim'
	use {
		'hoob3rt/lualine.nvim',	
  		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'kyazdani42/nvim-tree.lua'
	use 'junegunn/rainbow_parentheses.vim'
end)

