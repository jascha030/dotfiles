vim.g.mapleader = '<space>'
local execute = vim.api.nvim_command
local fn = vim.fn
local g = vim.g
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('settings')
require('plugins')
require('lsp')

