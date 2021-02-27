" 回车换行自插入空行并缩进(前提是配置了自动缩进)
" coc有相关配置了,此配置可以不要了
autocmd Filetype go inoremap <buffer> {<CR> {<CR>}<Esc>kA<CR>
autocmd Filetype java inoremap <buffer> {<CR> {<CR>}<Esc>kA<CR>
