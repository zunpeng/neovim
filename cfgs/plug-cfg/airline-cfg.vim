" ------------------------------------------------------------------------------
" ====== Plug - airline 状态栏
" ------------------------------------------------------------------------------
"是否显示状态栏,0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2
" 设置状态栏主题,airline
" let g:airline_theme="luna"
" let g:airline_theme="dark_minimal"
" let g:airline_theme="peaksea"
" let g:airline_theme="dracula"
let g:airline_theme="deus"
" let g:airline_theme="ravenpower"
" let g:airline_theme="monochrome"

let g:airline_powerline_fonts = 0  "支持 powerline 字体,1表示支持
let g:airline#extensions#tabline#enabled = 0 "显示窗口tab和buffer

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
" " let g:ale_sign_error = ''
" let g:ale_sign_error = '!!'
" " let g:ale_sign_warning = ''
" let g:ale_sign_warning = '>>'
" let g:ale_completion_enabled = 1
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_swift_swiftlint_use_defaults = 1
" let g:ale_open_list = 0
" let g:ale_lint_delay = 1000
" let g:ale_linters = {
"             \ 'go': ['golint', 'go vet', 'go build'],
"             \ }
