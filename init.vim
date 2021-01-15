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
syntax on
filetype on

" 设置undo backup目录
silent !mkdir -p ~/.config/nvim/tmp/backup
" silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
" if has('persistent_undo')
"     set undofile
"     set undodir=~/.config/nvim/tmp/undo,.
" endif

" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

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
"显示匹配的括号
set showmatch
"高亮搜索
set hlsearch
" -----------------------------------------------------------------------------
"  < 搜索配置 > --- End
" -----------------------------------------------------------------------------

"离开 Insert 模式时自动切换至英文输入法
set noimdisable
"设置字体
"set guifont=Courier\ New:h12
" set guifont=Source\ Code\ Pro:h12
set guifont=DroidSansMono\ Nerd\ Font\ 11
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
set encoding=utf8                                    "设置vim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型

" -----------------------折叠设置 begin---------------------------
" 设置默认折叠方式为缩进
set foldmethod=indent
" 每次打开文件时关闭折叠
set foldlevelstart=99


" 禁用 ale的lsp，使用 coc的lsp，需在插件加载前关闭ale的lsp
" 其他配置加入到 ale的配置文件中ale-cfg.vim
let g:ale_disable_lsp = 1


" 插件配置
source $HOME/.config/nvim/cfgs/plug-cfg.vim
source $HOME/.config/nvim/cfgs/keybindings.vim
source $HOME/.config/nvim/cfgs/compileRunGcc.vim

" source $HOME/.config/nvim/cfgs/plug-cfg/which-key-cfg.vim

" ====== Plug dracula主题   -----------必须在plug配置之后
source $HOME/.config/nvim/cfgs/theme-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/vim-devicons-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vim-startify-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/floaterm-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/nerdtree-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/coc-explorer-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/rnvimr.vim
"
source $HOME/.config/nvim/cfgs/plug-cfg/airline-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/spaceline-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/xtabline-cfg.vim

source $HOME/.config/nvim/cfgs/plug-cfg/nerdcommenter-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/rainbow-cfg.vim
" 使用vista-cfg替换tagbar-cfg
"source $HOME/.config/nvim/cfgs/plug-cfg/tagbar-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/vista-cfg.vim

source $HOME/.config/nvim/cfgs/plug-cfg/markdown-preview-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/bullets-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/markdown-toc-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/autoformat-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/neoformat-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/indentline-cfg.vim
" 使用coc-bookmark
" source $HOME/.config/nvim/cfgs/plug-cfg/bookmarks-cfg.vim
source $HOME/.config/nvim/cfgs/plug-cfg/coc-bookmark-cfg.vim

source $HOME/.config/nvim/cfgs/plug-cfg/easymotion-cfg.vim

source $HOME/.config/nvim/cfgs/plug-cfg/ale-cfg.vim

" golang调试器
source $HOME/.config/nvim/cfgs/plug-cfg/vim-delve-cfg.vim

" ctags生成辅助插件
source $HOME/.config/nvim/cfgs/plug-cfg/vim-gutentags-cfg.vim
" debug
" source $HOME/.config/nvim/cfgs/plug-cfg/vdebug-cfg.vim
" source $HOME/.config/nvim/cfgs/plug-cfg/vimspector-cfg.vim

" ------------------------------
" === languags cfgs
" ------------------------------

" load python virtualenv
" source $HOME/.config/nvim/cfgs/lang-cfg/python-venv.vim

" ------------------------------
" === Markdown Settings
" ------------------------------
" Snippets
source $HOME/.config/nvim/cfgs/lang-cfg/markdown-snippets.vim
" auto spell(markdown自动拼写检查)
" autocmd BufRead,BufNewFile *.md setlocal spell

