" 更改 ale 的警告符号
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
"let g:ale_sign_error = ''
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" 警告保持打开
let g:ale_sign_column_always = 1
