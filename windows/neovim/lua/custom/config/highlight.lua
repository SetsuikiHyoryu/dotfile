-- [[清除背景颜色]]
vim.cmd('highlight Normal guibg=none ctermbg=none')         -- 正文背景
vim.cmd('highlight DiffviewNormal guibg=none ctermbg=none') -- diff 正文背景
vim.cmd('highlight EndOfBuffer guibg=none ctermbg=none')    -- buffer 最后一行之外的区域，即填充屏幕的部分
vim.cmd('highlight SignColumn guibg=none ctermbg=none')     -- 标志列（行号列左侧）
vim.cmd('highlight FoldColumn guibg=none ctermbg=none')     -- 折叠列（标示列左侧）
vim.cmd('highlight StatusLine guibg=none ctermbg=none')     -- 状态栏
vim.cmd('highlight CursorLine guibg=none ctermbg=none')     -- 光标行
--vim.cmd('highlight NonText guibg=none ctermbg=none')        -- 无字区，暂未看出效果
