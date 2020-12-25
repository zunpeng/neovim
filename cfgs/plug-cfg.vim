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

" Pretty Dress
" Plug 'bpietravalle/vim-bolt'
" Plug 'theniceboy/nvim-deus'
" Plug 'ajmwagar/vim-deus'
"Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'

"文件树
Plug 'scrooloose/nerdtree'

"rnvimr
"已配置了ranger目前不需要使用此插件
" Plug 'kevinhwang91/rnvimr'


"状态栏airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'liuchengxu/eleline.vim'

" Status line
" Plug 'theniceboy/eleline.vim'
" Plug 'ojroques/vim-scrollstatus'

Plug 'mg979/vim-xtabline'
"图标
Plug 'ryanoasis/vim-devicons'

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
" Plug 'w0rp/ale'

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

" 单词包裹
" ysiw' 将光标所在字符串(一个单词)进行包裹
" 如果需要包裹多个单词，需要先按v或V进入可视模式选择字符，然后输入大写S，再输入包裹符号
" ds' 清除''
" cs'" 单引号替换成双引号（其他符号同理）
Plug 'tpope/vim-surround'   " 如果使用 . 重复surround的操作需要安装vim-repeat插件进行配合
Plug 'tpope/vim-repeat'
" 为 Markdown 生成 TOC 的 Vim 插件
Plug 'mzlogin/vim-markdown-toc'

" 书签
" Plug 'MattesGroeger/vim-bookmarks'

" debug插件
" Plug 'vim-vdebug/vdebug'
" debug 插件2 vimspector
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-python --enable-go'}
"
" 虚拟环境
Plug 'jmcantrell/vim-virtualenv'
"
" 内置终端配置
" ALT + =: toggle terminal below.
" ALT + SHIFT + h: move to the window on the left.
" ALT + SHIFT + l: move to the window on the right.
" ALT + SHIFT + j: move to the window below.
" ALT + SHIFT + k: move to the window above.
" ALT + SHIFT + p: move to the previous window.
" ALT + -: paste register 0 to terminal.
" ALT + q: switch to terminal normal mode.
Plug 'skywind3000/vim-terminal-help'
" fzf Plug
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()
