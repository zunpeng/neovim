" --------------------------
" ===== Plug - indentLine
" --------------------------
" 设置vim的缩进对齐线样式
let g:indentLine_char = "┊"
let g:indentLine_first_char = "┊"
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"启动高对比度的缩进线
let g:indentLine_setColors = 0
" let g:indentLine_color_term = 239

" 设置缩进线高亮
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indent_guides_guide_size = 1  " 指定对齐线的尺寸
" let g:indent_guides_start_level = 2 " 从第二层开始可视化显示缩进

" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
" 如果设置此行为0，缩进线消失，json的引号可以显示,可以设置indentLine_setColors=0 来用高对比度显示缩进，但可能无线条样式
let g:indentLine_setConceal = 1

"开启indentLine_setConceal时json中的引号自动被隐藏,打开文件时检测是否是json文件,将其关闭
autocmd FileType json let g:indentLine_setConceal=0
autocmd FileType markdown let g:indentLine_setConceal=0

" vim-markdown的concealcursor特性与indentLine冲突。在输入下划线和星号的时候下划线和星号会被indentLine隐藏
" 如果安装了indentLine，init.vim(vimrc)中增加下面一句问题就解决了。
let g:indentLine_concealcursor = ''
