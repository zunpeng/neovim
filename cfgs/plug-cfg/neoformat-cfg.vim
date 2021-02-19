" --------------------------
" ====== Plug - neoformat
" --------------------------

" nmap <Leader>bb :Neoformat jsbeautify<CR>
" nmap <Leader>bf :Neoformat<CR>
let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'replace': 1,
            \ 'stdin': 1,
            \ 'env': ["DEBUG=1"],
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }

" c/c++和格式化与本地安装的clangd格式化配置相关，需要将配置导出，然后再放到~/.clang-format下
" 导出配置命令
" clang-format -style=格式名 -dump-config > 文件名
" clang-format -style=llvm -dump-config > ~/.clang-format
" style 可以是以下几种llvm, google, chromium, mozilla, webkit

" let g:neoformat_enabled_c = ['uncrustify', 'clang-format', 'astyle']
" let g:neoformat_enabled_cpp = ['uncrustify', 'clang-format', 'astyle']
" let g:neoformat_enabled_c# = ['uncrustify', 'clang-format', 'astyle']
"let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter', 'black', 'isort', 'pyment']
" golang
let g:neoformat_enabled_go = ['gofmt', 'goimports', 'gofumpt', 'gofumports']
" java
let g:neoformat_enabled_java = ['uncrustify', 'astyle', 'prettier']
" json
let g:neoformat_enabled_json = ['js-beautify', 'prettydiff', 'prettier', 'jq', 'fixjson']
" markdown
let g:neoformat_enabled_markdown = ['remark', 'prettier']
" nginx
let g:neoformat_enabled_nginx = ['nginxbeautifier']
" xml
let g:neoformat_enabled_xml = ['tidy', 'prettydiff', 'prettier']
" xhtml
let g:neoformat_enabled_xhtml = ['tidy', 'prettydiff']
" html
let g:neoformat_enabled_html = ['html-beautify','prettier', 'prettydiff']

" pyaml格式化yml文件时自动清理注释并排序
" let g:neoformat_enabled_yaml = ['pyaml','prettier']
let g:neoformat_enabled_yaml = ['prettier']
let g:neoformat_try_formatprg = 1
" Enable alignment
"启用对齐，
"let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
"启用制表符到空格的转换，
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
"启用尾部空格的修剪，
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
" runs all formatters for current buffer without tab to spaces conversion
let b:neoformat_run_all_formatters = 1
"let b:neoformat_basic_format_retab = 0
let g:neoformat_only_msg_on_error = 1

" 管理撤销历史
"augroup fmt
"    autocmd!
"    autocmd BufWritePre * undojoin | Neoformat
"augroup END
