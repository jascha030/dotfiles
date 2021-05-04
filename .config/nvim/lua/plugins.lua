vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'marko-cerovac/material.nvim'
	use 'onsails/lspkind-nvim'
	use 'kyazdani42/nvim-tree.lua'
end)

