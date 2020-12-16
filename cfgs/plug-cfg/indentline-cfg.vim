" --------------------------
" ===== Plug - indentLine
" --------------------------
" 设置vim的缩进对齐线样式
let g:indentLine_char = "┊"
let g:indentLine_first_char = "┊"
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
" let g:indentLine_color_term = 239

" 设置缩进线高亮
" let g:indentLine_defaultGroup = 'SpecialKey'
let g:indent_guides_guide_size = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 2 " 从第二层开始可视化显示缩进

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
" 如果设置此行为0，缩进线消失，json的引号可以显示,可以设置indentLine_setColors=0 来用高对比度显示缩进，但可能无线条样式
" 如果注掉,可以显示缩进线，但json中的引号自动被隐藏
let g:indentLine_setConceal = 0
