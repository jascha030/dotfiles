local execute = vim.api.nvim_command

local fn = vim.fn
local g = vim.g


local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('material').set()
g.material_style = 'palenight'

vim.wo.number = true
