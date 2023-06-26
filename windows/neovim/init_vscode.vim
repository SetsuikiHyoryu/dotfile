call plug#begin('~/AppData/Local/nvim/plugged')

" Markdown 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

"---

" Get folding working with vscode neovim plugin
 if(exists("g:vscode"))
   nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
   nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
   nnoremap zc :call VSCodeNotify('editor.fold')<CR>
   nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
   nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
   nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
   nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>
 endif

" ---

" Plug Markdown
let g:mkdp_markdown_css = 'E:/SOFT/tool_text/nvim-win64/share/nvim/markdown.css'

" IME 入力文字化け修正
set ttimeout
set ttimeoutlen=50
