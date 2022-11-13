-- Plugins installation configured in lua/plugins.lua
require('plugins')
require('completion')
require('lsp')

-- Theme
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])
vim.opt.number = true
vim.opt.relativenumber = true

-- Telescope
require('telescope').setup()
require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- General editing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
