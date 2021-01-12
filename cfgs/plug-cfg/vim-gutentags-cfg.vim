" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 使用命令 ctags --list-kinds=c++ 可列出C++支持生成的标签类型的全量列表(即 –c++-kinds 参数的所有值)
" 使用此配置添加列出的ctags默认不添加tags的声明
let g:gutentags_ctags_extra_args += ['--python-kinds=+zl']
" https://vimjc.com/vim-ctag.html#%E4%BA%8C%E3%80%81ctags%E5%8F%82%E6%95%B0%E4%BB%8B%E7%BB%8D
let g:gutentags_ctags_extra_args += ['--java-kinds=+l']
