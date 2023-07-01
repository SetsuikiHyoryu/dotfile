-- require 'custom.config.vscode'
require 'custom.config.null-ls'
require 'custom.config.markdown'
require 'custom.config.java'
require 'custom.config.tab'
require 'custom.config.onedark'
require 'custom.config.highlight'

-- [[自定义设置]]
-- 启用光标行
vim.o.cursorline = true
-- 隐藏命令行（在输入命令时会临时覆盖状态栏）
-- vim.o.cmdheight = 0

-- 保存时根据 lsp 自动整理代码
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',

  callback = function(_)
    vim.lsp.buf.format()
  end,

  desc = 'Format current buffer with LSP on save.'
})

-- [[nvim-tree]]
vim.keymap.set('n', '<leader>t', ':NvimTreeFindFileToggle<CR>', { silent = true })
vim.cmd('highlight NvimTreeNormal ctermbg=none guibg=none')
vim.cmd('highlight NvimTreeEndOfBuffer ctermbg=none guibg=none')
