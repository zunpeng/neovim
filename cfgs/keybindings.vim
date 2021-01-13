" ------------------------------BASE KEYS--------------------------------------
" ------------------------------------------------------------------------------
" ===========窗口管理
" ------------------------------------------------------------------------------

" Open the vimrc file anytime
noremap <leader>nc :e ~/.config/nvim/init.vim<CR>

" basic keymapping
noremap <m-w> 5w
noremap <m-b> 5b
noremap <c-h> 5h
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-l> 5l


" 调整窗口大小
" Ctrl+Shift+上下左右键
nmap <c-s-right> <c-w>>
nmap <c-s-left> <c-w><
nmap <c-s-up> <c-w>-
nmap <c-s-down> <c-w>+
" Press <SPACE> + q to close the window below the current window
noremap <leader>q <C-w>j:q<CR>
" Shift + q 直接退出（不保存）
noremap Q :wq<CR>

" 保存save file
noremap <leader>sf :w<CR>

" 关闭 s 默认功能
"noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sj :set splitbelow<CR>:split<CR>
noremap <leader>sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sh :set splitright<CR>:vsplit<CR>

" 常规模式下输入 cS 清除行尾空格,同时取消高亮
"nmap cS :%s/\s\+$//g<CR>:noh<CR>
"上面的cS与vim surround冲突
nmap <leader><leader>cs :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮
nmap <leader><leader>cm :%s/\r$//g<CR>:noh<CR>

"---------------- plug easymotion
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" 查询两个字符
" s{char}{char} to move to {char}{char}
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)
nmap <leader><leader>t <Plug>(easymotion-t2)
" Move to line
map <Leader><Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

"---------easymotion替换原生的查找 但问号就不好用了
" ------使用星号查找不好用
" Gif config
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
"" Without these mappings, `n` & `N` works fine. (These mappings just provide
"" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
"---------easymotion替换原生的查找



" 在不使用 MiniBufExplorer 插件时也可用<C-k,j,h,l>切换到上下左右的窗口中去
" noremap <c-k> <c-w>k
" noremap <c-j> <c-w>j
" noremap <c-h> <c-w>h
" noremap <c-l> <c-w>l
" 在不使用 MiniBufExplorer 插件时也可用<Alt+Shift+k,j,h,l>切换到上下左右的窗口中去
" noremap <s-m-k> <c-w>k
" noremap <s-m-j> <c-w>j
" noremap <s-m-h> <c-w>h
" noremap <s-m-l> <c-w>l
noremap <leader>wk <c-w>k
noremap <leader>wj <c-w>j
noremap <leader>wh <c-w>h
noremap <leader>wl <c-w>l

" 从当前字符换行
noremap <leader>j i<CR><ESC>

" find and replace
" noremap \s :%s//g<left><left>
noremap <leader>sr :%s//g<left><left>

" ===
" === 光标移动
" ===
noremap <C-a> <Home>
noremap <C-e> <End>

" ----------插入模式------------------
" Ctrl + K 插入模式下光标向上移动
imap <c-k> <Up>
" Ctrl + J 插入模式下光标向下移动
imap <c-j> <Down>
" Ctrl + H 插入模式下光标向左移动
imap <c-h> <Left>
" Ctrl + L 插入模式下光标向右移动
imap <c-l> <Right>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 复制当前行到系统剪切板
noremap <Leader>ly <s-v>"+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p


" ------------------------------Plugins KEYS--------------------------------------

" ----------------------
" ====== Plug - floaterm
" ----------------------
" let g:floaterm_keymap_toggle = '<F1>'
" 打开floaterm窗口
let g:floaterm_keymap_toggle = '<leader>ff'
" 下一个floaterm窗口
let g:floaterm_keymap_next = '<leader>fn'
" 上一个floaterm窗口
let g:floaterm_keymap_prev = '<leader>fp'
" 创建一个新的floaterm窗口
let g:floaterm_keymap_new = '<leader>fc'
" 跳转到第一个floaterm窗口
let g:floaterm_keymap_first = '<leader>fa'
" 跳转到最后一个floaterm窗口
let g:floaterm_keymap_last = '<leader>fe'
" 隐藏和显示完全可以使用<leader>ff来操作
" 隐藏floaterm
let g:floaterm_keymap_hide = '<leader>fh'
" 显示floaterm
let g:floaterm_keymap_show = '<leader>fs'
" 关闭floaterm当前窗口,并退出floaterm
let g:floaterm_keymap_kill = '<leader>fk'

" floaterm 打开ranger
nmap <leader>fr :FloatermNew ranger<CR>
" floaterm 打开 fzf
nmap <leader>fz :FloatermNew fzf<CR>

" ----------------------
" ====== Plug - NerdTree
" ----------------------
" NERDTree plugin,  配置打开/关闭nerdTree快捷键
"map <F2> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>
nmap tt :NERDTreeToggle<CR>

" --------------------
" ====== ale 语法检查2
" --------------------
" nmap ]a <Plug>(ale_next_wrap)
" nmap [a <Plug>(ale_previous_wrap)
nmap <silent> <m-p> <Plug>(ale_previous_wrap)
nmap <silent> <m-n> <Plug>(ale_next_wrap)

" ------------------------------
" ====== coc-translator 英文翻译
" ------------------------------
" popup
nmap <Leader>ts <Plug>(coc-translator-p)
vmap <Leader>ts <Plug>(coc-translator-pv)
" echo
nmap <Leader>te <Plug>(coc-translator-e)
vmap <Leader>te <Plug>(coc-translator-ev)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)


" ------------------------------
" ====== coc-snippets
" ------------------------------
" Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
imap <m-/> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


" ------------------------
" ======== Plug - coc.nvim
" ------------------------
" 代码提示使用tab键选择
let g:coc_snippet_next = '<tab>'

" ----------------------------
" ====== Plug - airline 标签切换现在不用airline的标签切换了，此处快捷键不用了
" ----------------------------
"  根据标签序号切换窗口
" nmap <leader>1 <Plug>AirlineSelectTab1
" nmap <leader>2 <Plug>AirlineSelectTab2
" nmap <leader>3 <Plug>AirlineSelectTab3
" nmap <leader>4 <Plug>AirlineSelectTab4
" nmap <leader>5 <Plug>AirlineSelectTab5
" nmap <leader>6 <Plug>AirlineSelectTab6
" nmap <leader>7 <Plug>AirlineSelectTab7
" nmap <leader>8 <Plug>AirlineSelectTab8
" nmap <leader>9 <Plug>AirlineSelectTab9
" nmap <leader>- <Plug>AirlineSelectPrevTab
" nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>tq :bp<cr>:bd #<cr>

" 新建一个标签页
noremap <leader>tc :tabe<CR>
" 移至左侧标签页
noremap <leader>tp :-tabnext<CR>
" 移至右侧标签页
noremap <leader>tn :+tabnext<CR>
" 当前标签页左移动一格
noremap <leader>th :-tabmove<CR>
" 当前标签页右移动一格
noremap <leader>tl :+tabmove<CR>

nmap <leader>ta :XTabListTabs<CR>
nmap <leader>tf :tabnext 
" nmap <localleader>tb :tabs<CR>
" nmap <leader>tf :XTabNameTab<CR>

" ------------------------------
" === buffers key
" ------------------------------

" 切换buffer与tab标签
nmap <leader>bm :XTabMode<CR>
" 此处不加回车，调出buffer命令后，写buffer数字进行跳转
nmap <leader>bf :XTabNextBuffer 
" 查询所有buffer，然后选择加载
nmap <leader>bl :XTabListBuffers<CR>


" ----------------------------
" ====== Plug - ctags
" tagbar 被vista替换了
" ----------------------------
" nnoremap <leader>ct :TagbarToggle<CR>
"
" ----------------------------
" ====== Plug - vista
" ----------------------------
"
" let g:vista#renderer#enable_icon = 1
noremap <LEADER>v :Vista!!<CR>
noremap <c-t> :silent! Vista finder ctags<CR>

" ===
" === suda.vim
" 在写没有权限的文件时，使用:sw可以调用root权限写入
" ===
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%


" ----------------------------
" ====== Plug - markdown-preview
" ----------------------------
"  markdown 预览开启
nmap <leader>mp <Plug>MarkdownPreview
" markdown 预览关闭
nmap <leader>ms <Plug>MarkdownPreviewStop

" markdown预览(开启或关闭),MarkdownPreview与MarkdownPreviewStop是一对
" MarkdownPreviewToggle开启后再执行则会关闭当前预览的页面
" 而MarkdownPreview每执行一次会打开一个预览页面,必须使用MarkdownPreviewStop来关闭
nmap <leader>mt <Plug>MarkdownPreviewToggle
" coc-markdownlint >>  markdownlint.fixAll: fix all errors in current file found by markdownlint
" CocInstall coc-markdownlint
" markdown 语法修正
nmap <leader>mf <Plug>(coc-codeaction)

" ------------------------------
" === markdown table-mode
" ------------------------------
"  开启关闭
nmap <leader>mm :TableModeToggle<CR>


" --------------------------
" ====== Plug - neoformat
" --------------------------

" nmap <Leader>bb :Neoformat jsbeautify<CR>
nmap <Leader>nf :Neoformat<CR>

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

" --------------------------
" ====== plug bookmarks
" --------------------------
" "  在当前行添加或删除书签 bookmark toggle
" nmap <leader>bc <Plug>BookmarkToggle
" " 在当前行添加注释 bookmark annotate
" nmap <leader>ba <Plug>BookmarkAnnotate
" " 显示所有书签
" nmap <leader>bs <Plug>BookmarkShowAll
" " 下一个书签
" nmap <leader>bn <Plug>BookmarkNext
" " 上一个书签
" nmap <leader>bp <Plug>BookmarkPrev
" " 清除书签 好像和BookmarkClearAll是一样的效果
" nmap <leader>bx <Plug>BookmarkClear
" " 清除所有书签 大写X
" nmap <leader>bX <Plug>BookmarkClearAll
" " 将书签向上移动一行
" nmap <leader>bk <Plug>BookmarkMoveUp
" " 将书签向下移动一行
" nmap <leader>bj <Plug>BookmarkMoveDown
" "将书签移至任意一行
" nmap <Leader>bg <Plug>BookmarkMoveToLine
" " 保存所有书签至一个文件:BookmarkSave <filePath>
" " 从一个文件加载书签:BookmarkLoad <filePath>
"
" --------------------------
" ====== plug coc-bookmark 上面的bookmarks不再使用
" --------------------------
"
" bookmark insert(插入书签)比bt更省事一些
" nmap <Leader>bi <Plug>(coc-bookmark-toggle)
" nmap <Leader>ba <Plug>(coc-bookmark-annotate)
" nmap <Leader>bj <Plug>(coc-bookmark-next)
" nmap <Leader>bk <Plug>(coc-bookmark-prev)
nmap <Leader>bi :CocCommand bookmark.toggle<CR>
nmap <Leader>ba :CocCommand bookmark.annotate<CR>
nmap <Leader>bj :CocCommand bookmark.next<CR>
nmap <Leader>bk :CocCommand bookmark.prev<CR>
nmap <leader>bc :CocList bookmarkCurfile<CR>
nmap <leader>bb :CocList bookmarkAll<CR>

let g:terminal_key ="<leader>tt" "哪个键将用于切换终端窗口，默认为<m-=>。
" let g:terminal_cwd ="<leader>" "初始化工作目录：0保持不变，1文件路径和2项目根目录。
" let g:terminal_height ="<leader>" "新的终端高度，默认为10。
" let g:terminal_pos  ="<leader>" "打开终端的位置，默认为rightbelow。
" let g:terminal_shell ="<leader>" "指定外壳而不是默认外壳。
" let g:terminal_edit ="<leader>" "命令在vim中打开文件，默认为tab drop。
" let g:terminal_kill ="<leader>" "设置term退出vim时终止学期会话。
" let g:terminal_list  ="<leader>" "设置为0以将终端缓冲区隐藏在缓冲区列表中。
" let g:terminal_fixheight ="<leader>" "设置为1以设置winfixheight终端窗口。
" let g:terminal_close ="<leader>" "设置为1以在处理完成后关闭窗口。
"
"
" ------------------------------
" === golang调试插件vim-delve 快捷键
" === https://github.com/sebdah/vim-delve
" ------------------------------
nmap <leader>da :DlvAddBreakpoint<CR>
nmap <leader>di :DlvToggleBreakpoint<CR>
nmap <leader>dt :DlvAddTracepoint<CR>
" nmap <leader>dd :DlvToggleTracepoint<CR>
nmap <leader>dc :DlvClearAll<CR>
nmap <leader>ds :DlvDebug<CR>
nmap <leader>dd :DlvRemoveBreakpoint<CR>
nmap <leader>dr :DlvRemoveTracepoint<CR>
nmap <leader>dv :DlvVersion<CR>

" localleader is ,
" isort python import
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
" format python codes by yapf
" 此处也可以去掉（neoformat也带有格式化或coc也有）
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>


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
