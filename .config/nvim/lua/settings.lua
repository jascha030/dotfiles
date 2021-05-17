local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables


local scopes = {
	o = vim.o,
	b = vim.bo,
	w = vim.wo
}

local set_options = function(scope, options)
	for key, value  in pairs(options) do
		scope[key] = value
	end
end

require('material').set()

vim.g.material_style = 'palenight'

local options_global = {
	mouse = 'a'	
}

local options_buffer = {

}

local options_window = {
	number = true,
}

set_options(scopes.o, options_global)
set_options(scopes.b, options_buffer)
set_options(scopes.w, options_window)

