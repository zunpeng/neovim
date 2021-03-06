" ------------------------------
" === Basic Keys
" ------------------------------

" 替换数字加减（后面的Ctrl+a换成了移动光标到行首）
noremap + <C-a>
noremap - <C-x>
" close all windows
noremap <leader>qa :qall<CR>
" 关闭当前buffer窗口
noremap <leader>qb :XTabCloseBuffer<CR>
" force close current window
noremap <leader>qf :q!<CR>
" close current window
noremap <leader>qq :q<CR>
" close the window left the current window
noremap <leader>qh <C-w>h:q<CR>
" close the window below the current window
noremap <leader>qj <C-w>j:q<CR>
" close the window above the current window
noremap <leader>qk <C-w>k:q<CR>
" close the window right the current window
noremap <leader>ql <C-w>l:q<CR>
" Shift + q 直接退出（不保存）
noremap Q :q!<CR>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 复制当前行到系统剪切板
" noremap <Leader>cl <s-v>"+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" === suda.vim
" 在写没有权限的文件时，使用:sw可以调用root权限写入
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%

" 关闭 s 默认功能
"noremap s <nop>

noremap <m-w> 5w
noremap <m-b> 5b
noremap <c-h> 5h
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-l> 5l
" 光标移动至行首/尾
noremap <C-a> <Home>
noremap <C-e> <End>

" Ctrl + K 插入模式下光标向上移动
imap <c-k> <Up>
" Ctrl + J 插入模式下光标向下移动
imap <c-j> <Down>
" Ctrl + H 插入模式下光标向左移动
imap <c-h> <Left>
" Ctrl + L 插入模式下光标向右移动
imap <c-l> <Right>


" ------------------------------
" === File Operation <leader>f
" ------------------------------

" Open the vimrc file anytime
" file operation of open nvim default config
noremap <leader>fc :e ~/.config/nvim/init.vim<CR>
" 保存save file
noremap <leader>fs :w<CR>

" 转换为unix/linux格式文件
noremap <leader>ftu :set ff=unix<CR>
" 转换为dos(windows)格式文件
noremap <leader>ftd :set ff=dos<CR>
" 检查当前文件为什么格式
noremap <leader>ft? :set ff?<CR>
" 检查当前文件编码格式
noremap <leader>fe? :set encoding?<CR>
noremap <leader>feu :set encoding=UTF-8<CR>


" ----------------------
" ====== Plug - floaterm <localleader>f
" ----------------------
" let g:floaterm_keymap_toggle = '<F1>'
" 打开floaterm窗口
let g:floaterm_keymap_toggle = '<Localleader>ff'
" 下一个floaterm窗口
let g:floaterm_keymap_next = '<Localleader>fn'
" 上一个floaterm窗口
let g:floaterm_keymap_prev = '<Localleader>fp'
" 创建一个新的floaterm窗口
let g:floaterm_keymap_new = '<Localleader>fc'
" 跳转到第一个floaterm窗口
let g:floaterm_keymap_first = '<Localleader>fa'
" 跳转到最后一个floaterm窗口
let g:floaterm_keymap_last = '<Localleader>fe'
" 隐藏和显示完全可以使用<leader>ff来操作
" 隐藏floaterm
let g:floaterm_keymap_hide = '<Localleader>fh'
" 显示floaterm
let g:floaterm_keymap_show = '<Localleader>fs'
" 关闭floaterm当前窗口,并退出floaterm
let g:floaterm_keymap_kill = '<Localleader>fk'

" floaterm 打开ranger
nmap <Localleader>fr :FloatermNew ranger<CR>
" floaterm 打开 fzf
nmap <Localleader>fz :FloatermNew fzf<CR>
" floaterm 打开 lazygit
nmap <Localleader>fg :FloatermNew lazygit<CR>

" ------------------------------
" === Bookmarks/Buffers Operation <localleader>b <leader>b
" ------------------------------
"  在当前行添加或删除书签 bookmark toggle insert
nmap <localleader>bi <Plug>BookmarkToggle
" 在当前行添加书签说明 bookmark annotate
nmap <localleader>ba <Plug>BookmarkAnnotate
" 显示所有书签 list
nmap <localleader>bl <Plug>BookmarkShowAll
" 下一个书签 next
nmap <localleader>bn <Plug>BookmarkNext
" 上一个书签 previous
nmap <localleader>bp <Plug>BookmarkPrev
" 清除书签 好像和BookmarkClearAll是一样的效果 clean/clear
nmap <localleader>bc <Plug>BookmarkClear
" 清除所有书签 大写X
nmap <localleader>bC <Plug>BookmarkClearAll
" 将书签向上移动一行 up
nmap <localleader>bu <Plug>BookmarkMoveUp
" 将书签向下移动一行 down
nmap <localleader>bd <Plug>BookmarkMoveDown
"将书签移至任意一行 go
nmap <localLeader>bg <Plug>BookmarkMoveToLine
" 保存所有书签至一个文件:BookmarkSave <filePath>
" 从一个文件加载书签:BookmarkLoad <filePath>

" === Buffer Operation <leader>b
"
" 此处不加回车，调出buffer命令后，写buffer数字进行跳转 buffer search
nmap <leader>bN :XTabNextBuffer<space>
nmap <leader>bP :XTabPrevBuffer<space>
nmap <leader>bs <Plug>(XT-Select-Buffer)<space>
nmap <leader>bn :XTabNextBuffer<CR>
nmap <leader>bp :XTabPrevBuffer<CR>
nmap <leader>bm :XTabMode<CR>
" 查询所有buffer，然后选择加载
nmap <leader>bl :XTabListBuffers<CR>


" ------------------------------
" === Content Operation <leader>c
" ------------------------------
" 常规模式下输入 cS 清除行尾空格,同时取消高亮
nmap <localleader>cs :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮
nmap <localleader>cm :%s/\r$//g<CR>:noh<CR>
" 取消高亮
nmap <localleader>ch :noh<CR>
" 删除空行
nmap <localleader>cl :g/^$/d<CR>:noh<CR>
" 删除行首空格
nmap <localleader>ca :%s/^\s*//g<CR>:noh<CR>
" 从当前字符换行
noremap <leader>cj i<CR><ESC>

" ====== coc-translator 英文翻译
" popup
nmap <Leader>ct <Plug>(coc-translator-p)
vmap <Leader>ct <Plug>(coc-translator-pv)
" echo
nmap <Leader>ce <Plug>(coc-translator-e)
vmap <Leader>ce <Plug>(coc-translator-ev)
" translator content and replace old charaters
nmap <Leader>cr <Plug>(coc-translator-r)
vmap <Leader>cr <Plug>(coc-translator-rv)
" 注释
nmap <leader>cd <plug>NERDCommenterToggle

" === easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ------------------------------
" === Debug <leader>d <localleader>d
" ------------------------------

" ------------------------------
" === golang调试插件vim-delve 快捷键<localleader>d
" === https://github.com/sebdah/vim-delve
" ------------------------------
nmap <localleader>da :DlvAddBreakpoint<CR>
nmap <localleader>di :DlvToggleBreakpoint<CR>
nmap <localleader>dt :DlvAddTracepoint<CR>
" nmap <localleader>dd :DlvToggleTracepoint<CR>
nmap <localleader>dc :DlvClearAll<CR>
nmap <localleader>ds :DlvDebug<CR>
nmap <localleader>dd :DlvRemoveBreakpoint<CR>
nmap <localleader>dr :DlvRemoveTracepoint<CR>
nmap <localleader>dv :DlvVersion<CR>

" ------------------------------
" === debug vimspector <leader>d
" ------------------------------
nmap <leader>dd <Plug>VimspectorContinue
nmap <leader>dx <Plug>VimspectorStop
nmap <leader>dr <Plug>VimspectorRestart
nmap <leader>dp <Plug>VimspectorPause
nmap <leader>di <Plug>VimspectorToggleBreakpoint
nmap <leader>da <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>df <Plug>VimspectorAddFunctionBreakpoint
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dq <Plug>VimspectorStepOut
nmap <leader>dn <Plug>VimspectorRunToCursor
nmap <leader>dc :VimspectorReset<CR>

" ------------------------------
" === Git Operation <leader>g
" ------------------------------
nmap <leader>gl :FloatermNew lazygit<CR>
nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)
nmap <leader>gP <Plug>(GitGutterPreviewHunk)
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)
" turn off/on gitgutter
nmap <leader>gm :GitGutterToggle<CR>


" ------------------------------
" === Language Operation <leader>l
" ------------------------------

" ====== ale 语法检查2
" nmap ]a <Plug>(ale_next_wrap)
" nmap [a <Plug>(ale_previous_wrap)
nmap <silent> <m-p> <Plug>(ale_previous_wrap)
nmap <silent> <m-n> <Plug>(ale_next_wrap)

" ====== coc-snippets
" Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-n> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-n>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-p>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-n> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
" 将选中的代码创建代码片断
xmap <leader>lx <Plug>(coc-convert-snippet)
" compileRunGcc >>>> compileRunGcc.vim
noremap <leader>lr :call CompileRunGcc()<CR>

" ======== Plug - coc.nvim
imap <m-/> <Plug>(coc-snippets-expand)
" 代码提示使用tab键选择
let g:coc_snippet_next = '<tab>'

" neoformat 格式化
" nmap <Leader>bb :Neoformat jsbeautify<CR>
nmap <Leader>lf :Neoformat<CR>

"VirtualEnvActivate    VirtualEnvDeactivate  VirtualEnvList
nmap <leader>lva :VirtualEnvActivate
nmap <leader>lvd :VirtualEnvDeactivate<CR>
nmap <leader>lvl :VirtualEnvList<CR>

" line action
nmap <leader>lla <Plug>(coc-codeaction)
" definition
nmap <leader>lld <Plug>(coc-definition)
" references
nmap <leader>llr <Plug>(coc-references)
" type definition
nmap <leader>llt <Plug>(coc-type-definition)
" rename
nmap <leader>lls <Plug>(coc-rename)
" declaration
nmap <leader>llm <Plug>(coc-declaration)
" implementation
nmap <leader>lli <Plug>(coc-implementation)
" format
nmap <leader>llf <Plug>(coc-format)
nmap <leader>llF <Plug>(coc-format-selected)
xmap <leader>llF <Plug>(coc-format-selected)
" quickfix
nmap <leader>llx <Plug>(coc-fix-current)
" code lens
nmap <leader>lll <Plug>(coc-codelens-action)
" next diagnostic
nmap <leader>lln <Plug>(coc-diagnostic-next)
" next error
nmap <leader>lle <Plug>(coc-diagnostic-next-error)
" diagnostics
nmap <leader>llp :CocList diagnostics
" search outline
nmap <leader>llo :CocList outline
" references
nmap <leader>llv :CocList -I symbols
" nmap <leader>llu :CocUpdate                          " update CoC
" nmap <leader>llc :CocDisable                         " disable CoC
" nmap <leader>llz :CocEnable                          " enable CoC


" localleader is ,
" isort python import
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
" format python codes by yapf
" 此处也可以去掉（neoformat也带有格式化或coc也有）
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" ------------------------------
" === markdowm <leader>m
" ------------------------------
"  markdown 预览开启
nmap <leader>mp <Plug>MarkdownPreview
" markdown 预览关闭 quit
nmap <leader>mq <Plug>MarkdownPreviewStop
" markdown预览(开启或关闭),MarkdownPreview与MarkdownPreviewStop是一对
" MarkdownPreviewToggle开启后再执行则会关闭当前预览的页面
" 而MarkdownPreview每执行一次会打开一个预览页面,必须使用MarkdownPreviewStop来关闭
nmap <leader>mt <Plug>MarkdownPreviewToggle
" coc-markdownlint >>  markdownlint.fixAll: fix all errors in current file found by markdownlint
" CocInstall coc-markdownlint
" markdown 语法修正
nmap <leader>mf <Plug>(coc-codeaction)
"  开启关闭表格自动格式化
nmap <leader>mm :TableModeToggle<CR>

" ------------------------------
" === vimwiki <leader>m
" ------------------------------

" vimwiki doc-cn
" https://github.com/vimcn/vimwiki.vim.cnx/blob/master/doc/vimwiki.cnx
"
"  打开第[count] 个vimwiki索引
map <Leader>ma <Plug>VimwikiIndex
" 在新标签页中打开 第 [count] 个 wiki 索引文件
map <Leader>mw <Plug>VimwikiTabIndex
" 列出可选择的 wiki 列表,配置多个wiki的话
map <Leader>ms <Plug>VimwikiUISelect
" 打开第 [count] 个 wiki 项目的日记首页
map <Leader>mda <Plug>VimwikiDiaryIndex
"打开今天第 [count] 个 wiki 日记文件
map <Leader>mdd <Plug>VimwikiMakeDiaryNote
"在新标签页中打开今天第 [count] 个 wiki 日记文件
map <Leader>mdt <Plug>VimwikiTabMakeDiaryNote
" 插入所有可用的日志词条到当前缓冲区
map <Leader>mdi <Plug>VimwikiDiaryGenerateLinks           
" 创建明天的日志
map <Leader>mdm <Plug>VimwikiMakeTomorrowDiaryNote
" 创建昨天的日志
map <Leader>mdy <Plug>VimwikiMakeYesterdayDiaryNote

" 打开日历(左侧)
map <Leader>mdh :Calendar<CR>
map <Leader>mdv <Plug>CalendarV
" 打开日历(下方)
map <Leader>mdj <Plug>CalendarH
" 打开日历(新标签页)
map <Leader>mdn <Plug>CalendarT
" 打开日历(右侧)
map <Leader>mdl :CalendarVR<CR>
" 转换当前 wiki 页面为 HTML
map <Leader>mch <Plug>Vimwiki2HTML
"转换当前 wiki 页面为 HTML 并在浏览器中打开
map <Leader>mcb <Plug>Vimwiki2HTMLBrowse
"进入（必要时创建新的） Wiki 词条
" nmap <Leader>mg <Plug>VimwikiFollowLink
nmap <Leader>mg :VimwikiFollowLink<CR>
" 插入所有可用的词条到当前缓冲区
nmap <Leader>mi :VimwikiGenerateLinks<CR>
"水平分栏窗口中进入（必要时创建新的） Wiki 词条
map <Leader>me <Plug>VimwikiSplitLink
"垂直分栏窗口中进入（必要时创建新的） Wiki 词条
map <Leader>mv <Plug>VimwikiVSplitLink
"进入（必要时创建新的） wiki 词条，在新的 tab 页中打开
map <Leader>ml <Plug>VimwikiTabnewLink
"回到上一个 Wiki 词条
" nmap <Leader>mh <Plug>VimwikiGoBackLink
nmap <Leader>mh :VimwikiGoBackLink<CR>
"寻找并将光标定位到本页的下一个 Wiki 词条
" nmap <Leader>mj <Plug>VimwikiNextLink
nmap <Leader>mj :VimwikiNextLink<CR>
"寻找并将光标定位到本页的上一个 Wiki 词条
" nmap <Leader>mk <Plug>VimwikiPrevLink
nmap <Leader>mk :VimwikiPrevLink<CR>
" 删除光标所在的 Wiki 词条
map <Leader>mX <Plug>VimwikiDeleteLink
"重命名光标所在的 Wiki 词条
map <Leader>mr <Plug>VimwikiRenameLink
"切换列表项的开关（选中/反选）
map <Leader>mx <Plug>VimwikiToggleListItem
" 向左移动表格的当前列
map <Leader>mbh <Plug>VimwikiTableMoveColumnLeft
" 向右移动表格的当前列
map <Leader>mbl <Plug>VimwikiTableMoveColumnRight


" ------------------------------
" === Search Operation <leader>s
" ------------------------------
"---------------- plug easymotion
"向右查找字符
map <localleader>sl <Plug>(easymotion-lineforward)
"向下查找字符
map <Localleader>sj <Plug>(easymotion-j)
"向上查找字符
map <Localleader>sk <Plug>(easymotion-k)
"向左查找字符
map <Localleader>sh <Plug>(easymotion-linebackward)
" <Leader>f{char} to move to {char}
map  <Localleader>sf <Plug>(easymotion-bd-f)
nmap <Localleader>sf <Plug>(easymotion-overwin-f)
" 查询两个字符,并移动至字符
" s{char}{char} to move to {char}{char}
nmap <Localleader>ss <Plug>(easymotion-overwin-f2)
nmap <Localleader>st <Plug>(easymotion-t2)
" Move to line
map <Localleader>sL <Plug>(easymotion-bd-jk)
nmap <Localleader>sL <Plug>(easymotion-overwin-line)
" Move to word
map  <Localleader>sw <Plug>(easymotion-bd-w)
nmap <Localleader>sw <Plug>(easymotion-overwin-w)

" search and replace
" noremap \s :%s//g<left><left>
noremap <leader>sr :%s//g<left><left>


" ------------------------------
" === Tab Operation <leader>t
" ------------------------------
nmap <leader>tq :bp<cr>:bd #<cr>
" 新建一个标签页 insert tab
nmap <leader>ti :tabe<CR>
" 移至左侧标签页
nmap <leader>tp :-tabnext<CR>
" 移至右侧标签页
nmap <leader>tn :+tabnext<CR>
" 当前标签页左移动一格
nmap <leader>t< :-tabmove<CR>
" 当前标签页右移动一格
nmap <leader>t> :+tabmove<CR>
" tab list
nmap <leader>tl :XTabListTabs<CR>
" search tab and  jump
nmap <leader>ts :tabnext
" nmap <localleader>tb :tabs<CR>
" nmap <leader>tf :XTabNameTab<CR>
" 切换 buffer与tab标签 switch tabmod
nmap <leader>tm :XTabMode<CR>

" ------------------------------
" === Explorer Tree <leader>e
" ------------------------------

" NERDTree plugin,  配置打开/关闭nerdTree快捷键
"map <F2> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>
nmap <leader>en :NERDTreeToggle<CR>
" coc-explorer
" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>
nmap <space>ec :CocCommand explorer --preset cocConfig<CR>
nmap <space>eb :CocCommand explorer --preset buffer<CR>
" List all presets
nmap <space>el :CocList explPresets<CR>
nmap <space>ee :CocCommand explorer<CR>

" ------------------------------
" === Window Operation <leader>w
" ------------------------------
" 调整窗口大小
" Ctrl+Shift+上下左右键
nmap <c-s-right> <c-w>>
nmap <c-s-left> <c-w><
nmap <c-s-up> <c-w>-
nmap <c-s-down> <c-w>+

" 分割窗口
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <Localleader>wh :set splitright<CR>:vsplit<CR>
noremap <Localleader>wj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <Localleader>wk :set splitbelow<CR>:split<CR>
noremap <Localleader>wl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

" 切换窗口
noremap <leader>wk <c-w>k
noremap <leader>wj <c-w>j
noremap <leader>wh <c-w>h
noremap <leader>wl <c-w>l


" terminal
let g:terminal_key ="<leader>wt" "哪个键将用于切换终端窗口，默认为<m-=>。
" let g:terminal_cwd ="<leader>" "初始化工作目录：0保持不变，1文件路径和2项目根目录。
" let g:terminal_height ="<leader>" "新的终端高度，默认为10。
" let g:terminal_pos  ="<leader>" "打开终端的位置，默认为rightbelow。
" let g:terminal_shell ="<leader>" "指定外壳而不是默认外壳。
" let g:terminal_edit ="<leader>" "命令在vim中打开文件，默认为tab drop。
" let g:terminal_kill ="<leader>" "设置term退出vim时终止学期会话。
" let g:terminal_list  ="<leader>" "设置为0以将终端缓冲区隐藏在缓冲区列表中。
" let g:terminal_fixheight ="<leader>" "设置为1以设置winfixheight终端窗口。
" let g:terminal_close ="<leader>" "设置为1以在处理完成后关闭窗口。

" ------------------------------
" === Vista <leader>v
" ------------------------------

" ==== vista/ctags
noremap <leader>vv :Vista!!<CR>
" noremap <c-t> :silent! Vista finder ctags<CR>
noremap <leader>vl :silent! Vista finder ctags<CR>


" ------------------------------
" === Other Explain
" ------------------------------

" indent 对应的折叠代码有：
" zc 折叠
" zC 对所在范围内所有嵌套的折叠点进行折叠
" zo 展开折叠
" zO 对所在范围内所有嵌套的折叠点展开
" [z 到当前打开的折叠的开始处。
" ]z 到当前打开的折叠的末尾处。
" zj 向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
" zk 向上移动到前一折叠的结束处。关闭的折叠也被计入。
"    使用时在大括号中间输入以上命令。
"    当使用marker方式时，需要用标计来标识代码的折叠，系统默认是{{{和}}}，最好不要改动之：）
"    可以使用下面的命令来创建和删除折叠：
"
" zf 创建折叠，比如在marker方式下：
"    zf56G，创建从当前行起到56行的代码折叠；
"    10zf或10zf+或zf10↓，创建从当前行起到后10行的代码折叠。
"    10zf-或zf10↑，创建从当前行起到之前10行的代码折叠。
"    在括号处zf%，创建从当前行起到对应的匹配的括号上去（（），{}，[]，等）。
"
" zd 删除 (delete) 在光标下的折叠。仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
" zD 循环删除 (Delete) 光标下的折叠，即嵌套删除折叠。
"    仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
"
" zE 除去 (Eliminate) 窗口里“所有”的折叠。
"    仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
" -----------------------折叠设置 end---------------------------
"
" ------------------------------
" === tab键补全
" ------------------------------

" function! CleverTab()
"     if strpart( getline('.') ,0,col('.')-1) =~'^\s*$'
"         return "\<Tab>"
"     else
"         return "\<C-N>"
"     endif
" endfunction
" inoremap <Tab> <C-R>=CleverTab()<CR>

iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<CR>
iab xdate <c-r>=strftime("%Y-%m-%d")<CR>
