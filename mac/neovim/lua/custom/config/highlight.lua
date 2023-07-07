-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[清除背景颜色]]
vim.cmd('highlight Normal guibg=none ctermbg=none')         -- 正文背景
vim.cmd('highlight DiffviewNormal guibg=none ctermbg=none') -- diff 正文背景
vim.cmd('highlight EndOfBuffer guibg=none ctermbg=none')    -- buffer 最后一行之外的区域，即填充屏幕的部分
vim.cmd('highlight SignColumn guibg=none ctermbg=none')     -- 标志列（行号列左侧）
vim.cmd('highlight FoldColumn guibg=none ctermbg=none')     -- 折叠列（标示列左侧）
vim.cmd('highlight StatusLine guibg=none ctermbg=none')     -- 状态栏
vim.cmd('highlight CursorLine guibg=none ctermbg=none')     -- 光标行
--vim.cmd('highlight NonText guibg=none ctermbg=none')        -- 无字区，暂未看出效果

-- 行内信息（`gui=bold` 没有生效，不明原因）
vim.cmd('highlight DiagnosticVirtualTextError guibg=none gui=bold ctermbg=none')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=none gui=bold ctermbg=none')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=none gui=bold ctermbg=none')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=none gui=bold ctermbg=none')
