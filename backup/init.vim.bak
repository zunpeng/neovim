"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__  |    \_/  |___|_|  |_|_| \_\\____|
"            | |
"         |____/
"
" 如果无法显示中文, 在.vimrc中增加下面这句,vim中文文档不会覆盖原英文文档，安装后vim默认使用中文文档,若使用英文文档，将cn修改为en即可
"set helplang=en （即将cn改为en）

" 配置leader键
"let mapleader = ";"
let mapleader = "\<space>"
let g:maplocalleader = ','
" 启用鼠标
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

set nocompatible    "禁用 Vi 兼容模式
" 当文件在外部被修改，自动更新该文件
set autoread
set t_Co=256
syntax on
filetype on
" 制表符
set tabstop=4
"把tab转成空格
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
" 状态栏显示目前所执行的指令
set showcmd
" 行号和标尺
set number
"显示相对行号
set relativenumber
"显示最后一行的状态
set ruler
set rulerformat=%15(%c%V\ %p%%%)
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
"hi MatchParen term=reverse ctermbg=8 guibg=Cyan

"hi NormalFloat ctermbg=242 guibg=DarkGrey
" 自动补全颜色设置
hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
" 控制台响铃
" 出错时，不要发出响声
set noerrorbells
"出错时，发出视觉提示，通常是屏幕闪烁
set novisualbell
set t_vb= "close visual bell
"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full

"垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
set sidescrolloff=15
" -----------------------------------------------------------------------------
"  < 搜索配置 > --- Begin
" -----------------------------------------------------------------------------
"在查找时忽略大小写
set ignorecase
"在查找时忽略大小写
set ignorecase
"如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
set smartcase
"在输入要搜索的文字时，实时匹配
set incsearch
"高亮搜索
set hlsearch
"显示匹配的括号
set showmatch
"配置查找高亮颜色
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
" -----------------------------------------------------------------------------
"  < 搜索配置 > --- End
" -----------------------------------------------------------------------------

"离开 Insert 模式时自动切换至英文输入法
set noimdisable
"设置字体
"set guifont=Courier\ New:h12
set guifont=Source\ Code\ Pro:h12
" 设置为双字宽显示，否则无法完整显示如:☆
" 此设置会导致floaterm显示不全
"set ambiwidth=double
" 防止vim背景颜色错误
"set t_ut=
"如果设置主题的话，会影响vimrc中配置的配色
"colorscheme desert
" 启用每行超过180列的字符提示（字体变色并加下划线），不启用就注释掉
au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 180 . 'v.\+', -1)
" 自动切换到文件当前目录
set autochdir
"设置命令行的高度
set cmdheight=1
" 再次打开文件，定位到上次退出时的位置
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

set backspace=2 "能使用backspace回删
" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf-8                                    "设置vim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型

" ------------------------------------------------------------------------------
" <快捷键配置>
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" ===========窗口管理
" ------------------------------------------------------------------------------
" 调整窗口大小
" Ctrl+Shift+上下左右键
nmap <c-s-right> <c-w>>
nmap <c-s-left> <c-w><
nmap <c-s-up> <c-w>-
nmap <c-s-down> <c-w>+
" Disable the default s key
"noremap s <nop>
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sj :set splitbelow<CR>:split<CR>
noremap <leader>sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sh :set splitright<CR>:vsplit<CR>

" 常规模式下输入 cS 清除行尾空格,同时取消高亮
nmap cS :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮
nmap cM :%s/\r$//g<CR>:noh<CR>
" 在不使用 MiniBufExplorer 插件时也可用<C-k,j,h,l>切换到上下左右的窗口中去
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

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
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p




" ------------------------------------------------------------------------------
" <插件管理配置>
" 安装插件管理器vim-plug
" 网址: https://github.com/junegunn/vim-plug/
" 命令: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 然后须配置插件管理的开始(call plug#begin('~/.vim/plugged'))与结尾标识才能生效
"
" ------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugins')
" dracula 配色主题
" https://draculatheme.com/vim
Plug 'dracula/vim', { 'as': 'dracula' }

"文件树
Plug 'scrooloose/nerdtree'
"状态栏airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"符号对齐
Plug 'junegunn/vim-easy-align'
" 可视化缩进线
Plug 'Yggdroot/indentLine'
" 注释插件
" 注释<leader>cc
" 反注释<leader>cu
Plug 'scrooloose/nerdcommenter'

"语法检查
"Plug 'dense-analysis/ale'
Plug 'w0rp/ale'

" 浮动窗口
Plug 'voldikss/vim-floaterm'
" 快捷键提示
Plug 'liuchengxu/vim-which-key'
" 括号高亮
Plug 'luochen1990/rainbow'

" ctags插件
" 需要先安装ctags
" wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
" tar -zxvf ctags-5.8.tar.gz
" cd ctags-5.8
" ./configure --prefix=/opt/ctags-5.8 # $PATH是你要安装的位置
" make -j
" make install
" 然后配置环境变量
Plug 'majutsushi/tagbar'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Autoformat
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
"
"格式化
Plug 'sbdchd/neoformat'

call plug#end()

" ------------------------------------------------------------------------------
" ====== Plug dracula主题   -----------必须在plug配置之后
" ------------------------------------------------------------------------------
"colorscheme dracula
" 背景透明
"hi Normal ctermfg=252 ctermbg=none


" ------------------------------------------------------------------------------
" ====== Plug - which-key
" ------------------------------------------------------------------------------


" ------------------------------------------------------------------------------
" ====== Plug - floaterm
" ------------------------------------------------------------------------------
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1



" ------------------------------------------------------------------------------
" ====== Plug - NerdTree
" ------------------------------------------------------------------------------
""" nerdtree插件配置START
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
" NERDTree plugin,  配置打开/关闭nerdTree快捷键
"map <F2> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>
nmap tt :NERDTreeToggle<CR>
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"let NERDTreeWinPos="right"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1



" ------------------------------------------------------------------------------
" ====== Plug - airline 状态栏
" ------------------------------------------------------------------------------
"是否显示状态栏,0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2
" 设置状态栏主题,airline
"let g:airline_theme="luna"
"let g:airline_theme="dark_minimal"
"let g:airline_theme="peaksea"
let g:airline_theme="dracula"
"let g:airline_theme="ravenpower"
"let g:airline_theme="monochrome"

let g:airline_powerline_fonts = 0  "支持 powerline 字体,1表示支持
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer

let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0

" 关闭状态显示空白符号计数,这个对我用处不大"
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#exclude_preview = 1

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
            \ '0': '⑩ ',
            \ '1': '① ',
            \ '2': '② ',
            \ '3': '③ ',
            \ '4': '④ ',
            \ '5': '⑤ ',
            \ '6': '⑥ ',
            \ '7': '⑦ ',
            \ '8': '⑧ ',
            \ '9': '⑨ '
            \}
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>q :bp<cr>:bd #<cr>
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = ''
" let g:airline_left_sep = ']'
" let g:airline_left_alt_sep = ')'
" let g:airline_right_sep = '['
" let g:airline_right_alt_sep = '('
let g:airline_symbols.maxlinenr = ' ML' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"

" ------------------------------------------------------------------------------
" 语法检查1<airline-coc> ***************** Begin
" ------------------------------------------------------------------------------
"coc <https://github.com/neoclide/coc.nvim>
" enable/disable coc integration >
" let g:airline#extensions#coc#enabled = 1
" """" change error symbol:
" let airline#extensions#coc#error_symbol = 'E:'
" """" change warning symbol:
" let airline#extensions#coc#warning_symbol = 'W:'
" """" change error format:
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" """" change warning format:
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" ------------------------------------------------------------------------------
" 语法检查1<airline-coc> **************** End
" ------------------------------------------------------------------------------

" --------------------
" ====== ale 语法检查2
" --------------------
" let g:ale_sign_error = ''
let g:ale_sign_error = '!!'
" let g:ale_sign_warning = ''
let g:ale_sign_warning = '>>'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_linters = {
            \ 'go': ['golint', 'go vet', 'go build'],
            \ }
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)


" ------------------------
" ======== Plug - coc.nvim
" ------------------------
" 代码提示使用tab键选择
let g:coc_snippet_next = '<tab>'

" ------ coc-translator 英文翻译 -------
" popup
nmap <Leader>ts <Plug>(coc-translator-p)
vmap <Leader>ts <Plug>(coc-translator-pv)
" echo
nmap <Leader>te <Plug>(coc-translator-e)
vmap <Leader>te <Plug>(coc-translator-ev)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)


" -----------------------------------
" ====== Plug - nerdcommenter 注释插件
" -----------------------------------
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1



" ---------------------------------
" ====== 括号高亮配色 ((((((()))))))
" ---------------------------------
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['#FFE66F', '#00FFFF', '#46A3FF', '#AAAAFF', '#FFB5B5'],
            \   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \}


" ----------------------------
" ====== Plug - ctags
" ----------------------------
let g:tagbar_width=30
" 快捷键
nnoremap <leader>ct :TagbarToggle<CR>


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
" 用于提示markdown文档错误并修正(如果不需要可以去掉这个插件，感觉没啥大用)
nmap <leader>mf <Plug>(coc-codeaction)

" 设置为1时，在markdown进入预览区后则自动打开预览
let g:mkdp_auto_start = 0
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0
" 如果设置为1,所有文件都可以使用markdownpreview 命令预览,默认为0
let g:mkdp_command_for_global = 0
" 设置为1时，局域网内其他人也可以预览,默认为0,为0时只能本机预览
let g:mkdp_open_to_the_world = 0
" 用于使用本地浏览器预览远程服务器上vim下的markdown文档,默认为空
let g:mkdp_open_ip = ''
" 预览使用的默认浏览器
let g:mkdp_browser = 'google-chrome-stable'
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
" 自定义的markdown渲染css，路径必须是css文件的绝对路径
let g:mkdp_markdown_css = ''
" 自定义的markdown高亮css，路径必须是css文件的绝对路径
let g:mkdp_highlight_css = ''
" 预览url端口，为空是随机生成一个端口
let g:mkdp_port = ''
" markdown 预览窗口标题，${name}是当前文件名称
let g:mkdp_page_title = '「${name}」'
" 预览可识别的文件类型
let g:mkdp_filetypes = ['markdown']


" --------------------------
" ========== Plug - AutoFormat
" --------------------------
" augroup autoformat_settings
"   "autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
"   "autocmd FileType dart AutoFormatBuffer dartfmt
"   autocmd FileType go AutoFormatBuffer gofmt
"   autocmd FileType gn AutoFormatBuffer gn
"   autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"   autocmd FileType java AutoFormatBuffer google-java-format
"   autocmd FileType python AutoFormatBuffer yapf
"   " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"   "autocmd FileType rust AutoFormatBuffer rustfmt
"   "autocmd FileType vue AutoFormatBuffer prettier
" augroup END
"
"
" --------------------------
" ====== Plug - neoformat
" --------------------------

" nmap <Leader>bb :Neoformat jsbeautify<CR>
nmap <Leader>bf :Neoformat<CR>
let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'replace': 1,
            \ 'stdin': 1,
            \ 'env': ["DEBUG=1"],
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
let g:neoformat_try_formatprg = 1
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
" runs all formatters for current buffer without tab to spaces conversion
let b:neoformat_run_all_formatters = 1
let b:neoformat_basic_format_retab = 0
let g:neoformat_only_msg_on_error = 1
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END


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
" 如果设置此行为0，缩进线消失，json的引号可以显示,可以设置indentLine_setColors=0 来用高对比度显示缩进，但无线条样式
" 如果注掉,可以显示缩进线，但json中的引号自动被隐藏
let g:indentLine_setConceal = 0
" -----------------------折叠设置 begin---------------------------
" 设置默认折叠方式为缩进
set foldmethod=indent
" 每次打开文件时关闭折叠
set foldlevelstart=99
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
