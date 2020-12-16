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

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
" let g:neoformat_enabled_yaml = ['pyaml','prettier']
" pyaml格式化yml文件时自动清理注释并排序
let g:neoformat_enabled_yaml = ['prettier']
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
