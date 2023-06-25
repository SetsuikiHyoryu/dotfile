require 'config.null-ls_config'

-- [[nvim-tree]]
vim.keymap.set('n', '<leader>t', ':NvimTreeFindFileToggle<CR>', { silent = true })
vim.cmd('highlight NvimTreeNormal ctermbg=none guibg=none')
vim.cmd('highlight NvimTreeEndOfBuffer ctermbg=none guibg=none')

-- [[自定义设置]]
-- 隐藏命令行（在输入命令时会临时覆盖状态栏）
vim.o.cmdheight = 0

-- 修改 tab 显示的宽度
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go" },

	callback = function()
		vim.bo.expandtab = false
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cs", "java" },

	callback = function()
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
	end
})

-- 保存时根据 lsp 自动整理代码
vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = '*',

	callback = function(_)
		vim.lsp.buf.format()
	end,

	desc = 'Format current buffer with LSP on save.'
})

-- 清除背景颜色
vim.cmd('highlight Normal guibg=none ctermbg=none')         -- 正文背景
vim.cmd('highlight DiffviewNormal guibg=none ctermbg=none') -- 正文背景
vim.cmd('highlight EndOfBuffer guibg=none ctermbg=none')    -- 正文背景
vim.cmd('highlight SignColumn guibg=none ctermbg=none')     -- 标志列（行号列左侧）
-- vim.cmd('highlight NonText guibg=none ctermbg=none') -- 无字区，暂未看出效果
vim.cmd('highlight StatusLine guibg=none ctermbg=none')     -- buffer 最后一行之外的区域，即填充屏幕的部分
