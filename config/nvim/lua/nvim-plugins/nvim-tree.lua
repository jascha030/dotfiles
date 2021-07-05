local g = vim.g
g.nvim_tree_side = 'right'
g.nvim_tree_width = 30
g.nvim_tree_indent_markers = 1
g.nvim_tree_auto_close = 1
g.nvim_tree_disable_netrw = 0
g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
g.nvim_tree_auto_ignore_ft = 'startify'
g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
  folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}

vim.cmd('set termguicolors')

