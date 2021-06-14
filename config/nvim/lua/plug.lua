local vim = vim

local function plug(path, config)
  vim.validate {
    path = {path, 's'};
    config = {config, vim.tbl_islist, 'an array of packages'};
  }
  
  vim.fn["plug#begin"](path)
  
  for _, v in ipairs(config) do
    if type(v) == 'string' then
      vim.fn["plug#"](v)
    elseif type(v) == 'table' then
      local p = v[1]
      assert(p, 'Must specify package as first index.')
      v[1] = nil
      vim.fn["plug#"](p, v)
      v[1] = p
    end
  end
  
  vim.fn["plug#end"]()
end

plug('~/.config/nvim/plugged', {
    'ojroques/vim-oscyank';
    'voldikss/vim-floaterm';
})

