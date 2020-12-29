" ------------------------------------------------------------------------------
" ====== 主题   -----------必须在plug配置之后
" ------------------------------------------------------------------------------
"
"""""""""""deus配置"""""""""""""
" color deus
" 开启直色后，nvim背景不再透明
" set termguicolors " enable true colors support
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark
" let ayucolor="mirage"
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:one_allow_italics = 1
"""""""""""deus配置"""""""""""""

" color dracula
"color one
color gruvbox
"let ayucolor="light"
"color ayu
"color xcodelighthc
"set background=light
"set cursorcolumn

" hi NonText ctermfg=gray guifg=grey10
"hi SpecialKey ctermfg=blue guifg=grey70

"colorscheme dracula
" " 背景透明
hi Normal ctermfg=252 ctermbg=none

" -----------------------------
" === base colors config
" -----------------------------
"
"高亮当前列
set cursorcolumn
"高亮当前行
set cursorline
" 设置当前列高亮背景色
hi CursorColumn term=reverse ctermbg=8 guibg=Grey50
" 设置当前行高亮背景色
" 其中 ctermbg是设定背景色，ctermfg是设定前景色，guibg是设定下划线的背景色，guifg是设定下划线的前景色。
" “=”后边就是颜色，你可以将它们换成你喜欢的颜色，NONE表示默认。
" 要想不显示下划线，只需要将后边两项设为NONE就可以了。
hi CursorLine term=NONE cterm=NONE ctermbg=8 guibg=NONE guifg=NONE
"hi CursorLine term=underline cterm=underline ctermbg=8 guibg=Grey50
"设置括号匹配高亮颜色
" term应该是光标下的字体颜色,ctermbg匹配到的括号背景色, ctermfg匹配到的括号前景色
hi MatchParen term=reverse ctermbg=DarkYellow ctermfg=0 guibg=Cyan

"hi NormalFloat ctermbg=242 guibg=DarkGrey
" 自动补全颜色设置
hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
"配置查找高亮颜色
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
