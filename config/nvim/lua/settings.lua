-- Shortcuts for vim related functions
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()

local scopes = {
    g = vim.g,
    o = vim.o,
    b = vim.bo,
    w = vim.wo
}

local set_options = function(scope, options)
    for key, value  in pairs(options) do
        scope[key] = value
    end
end

-- Colors
require('material').set()
scopes.g.material_style = 'palenight'

-- Tabs (expandtab, smartindent defined in options_buffer)
cmd('set ts=4')
cmd('set sw=4')
cmd('set incsearch')
cmd('set colorcolumn=120')
cmd('set backspace=indent,eol,start')

local options_global = {
    mouse = 'a',
    t_Co = '256',
    showtabline = 2,
    scrolloff = 5,
    termguicolors = true,
    fileencoding = 'utf-8',
}

local options_buffer = {
    expandtab = true,
    smartindent = true
}

local options_window = {
    number = true,
    cursorline = true
}

set_options(scopes.o, options_global)
set_options(scopes.b, options_buffer)
set_options(scopes.w, options_window)

