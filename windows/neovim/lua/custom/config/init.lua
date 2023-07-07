require 'custom.config.lsp'
require 'custom.config.nvim-cmp'
require 'custom.config.null-ls'
-- require 'custom.config.java'
require 'custom.config.tab'
require 'custom.config.telescope'
require 'custom.config.treesitter'
require 'custom.config.markdown'
-- require 'custom.config.vscode'
require 'custom.config.onedark'
require 'custom.config.highlight'

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Make line numbers default
vim.o.number = true

-- Enable break indent
vim.o.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Powershell 中 Ctrl + Z 程序会失去响应，替换为返回键
vim.keymap.set('n', '<C-Z>', 'u', { silent = true })
-- 启用光标行
vim.o.cursorline = true
-- 隐藏命令行（在输入命令时会临时覆盖状态栏）
-- vim.o.cmdheight = 0

-- [[ nvim-tree ]]
vim.keymap.set('n', '<leader>t', ':NvimTreeFindFileToggle<CR>', { silent = true })
vim.cmd('highlight NvimTreeNormal ctermbg=none guibg=none')
vim.cmd('highlight NvimTreeEndOfBuffer ctermbg=none guibg=none')

-- [[ Diagnostic keymaps ]]
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
