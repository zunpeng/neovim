" ------------------------------------------------------------------------------
" ====== 主题   -----------必须在plug配置之后
" ------------------------------------------------------------------------------
"
"=========gruvbox主题配置======================
"color gruvbox
" " 背景透明
" hi Normal ctermfg=252 ctermbg=none
"===============================

"""""""""""deus配置"""""""""""""
colorscheme deus
" " 开启直色后，nvim背景不再透明
set t_Co=256
let g:deus_termcolors=256
" enable true colors support
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
hi NonText ctermfg=gray guifg=grey10
" hi SpecialKey ctermfg=blue guifg=grey70

"" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"" let ayucolor="mirage"
"" let g:oceanic_next_terminal_bold = 1
"" let g:oceanic_next_terminal_italic = 1
"" let g:one_allow_italics = 1
"""""""""""deus配置"""""""""""""

"color dracula
"color one
"let ayucolor="light"
"color ayu
"color xcodelighthc
"set background=light

"colorscheme dracula

" -----------------------------
" === base colors config
" -----------------------------
"
"高亮当前列
set cursorcolumn
"高亮当前行
set cursorline
" 设置当前列高亮背景色
" hi CursorColumn term=reverse ctermbg=8 guibg=Grey50
" 设置当前行高亮背景色
" 其中 ctermbg是设定背景色，ctermfg是设定前景色，guibg是设定下划线的背景色，guifg是设定下划线的前景色。
" “=”后边就是颜色，你可以将它们换成你喜欢的颜色，NONE表示默认。
" 要想不显示下划线，只需要将后边两项设为NONE就可以了。
" hi CursorLine term=NONE cterm=NONE ctermbg=8 guibg=NONE guifg=NONE
"hi CursorLine term=underline cterm=underline ctermbg=8 guibg=Grey50
"设置括号匹配高亮颜色
" term应该是光标下的字体颜色,ctermbg匹配到的括号背景色, ctermfg匹配到的括号前景色
hi MatchParen term=reverse ctermbg=DarkYellow ctermfg=0 guibg=Cyan

"hi NormalFloat ctermbg=242 guibg=DarkGrey
" 自动补全颜色设置(下面两行)
" hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
"配置查找高亮颜色
"hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
"
" ------------------------------
" === Terminal Behaviors
" === 配置vim真色后，内置终端、floaterm、ranger等在vim内打开，颜色会失真，故做如下配置
" ------------------------------
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
