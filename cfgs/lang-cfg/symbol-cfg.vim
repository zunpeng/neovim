" 回车换行自插入空行并缩进(前提是配置了自动缩进)
autocmd Filetype go inoremap <buffer> {<CR> {<CR>}<Esc>kA<CR>
autocmd Filetype java inoremap <buffer> {<CR> {<CR>}<Esc>kA<CR>
