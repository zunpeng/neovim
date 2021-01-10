" ------------------------------------------------------------------------------
" ====== Plug - which-key
" -------------------------
" <BackSpace> 退回到上一层
" <ESC> 退出which-key
" ------------------------------------------------------------------------------

" 注册键位与对应的字典，不然会找不到典而报错undefine
call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',', "g:local_which_key_map")
" Define prefix dictionary(leader)
let g:which_key_map = {}
" let g:which_key_sep = '→'

" Define prefix dictionary(localleader)
let g:local_which_key_map = {}

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>
" by defaule timeoutlen is 1000 ms
set timeoutlen=500

" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" ------------------------------
" === <leader> key map
" ------------------------------

" 第一个元素表明执行的操作，第二个是该操作的介绍
" group
let g:which_key_map['f'] = {
      \ 'name' : '+Floaterm' ,
      \ 'a' : [':FloatermFirst' , 'FloatermFirst'],
      \ 'e' : [':FloatermLast' , 'FloatermLast'],
      \ 'f' : [':FloatermToggle' , 'FloatermToggle'],
      \ 'h' : [':FloatermHide' , 'FloatermHide'],
      \ 'k' : [':FloatermKill' , 'FloatermKill'],
      \ 'n' : [':FloatermNext' , 'FloatermNext'],
      \ 'p' : [':FloatermPrev' , 'FloatermPrev'],
      \ 'r' : [':FloatermNew ranger' , 'FloatermNew ranger'],
      \ 's' : [':FloatermShow' , 'FloatermShow'],
      \ 'z' : [':FloatermNew fzf' , 'FloatermNew fzf'],
      \ 'c' : [':FloatermNew' , 'FloatermNew'],
      \ }

let g:which_key_map['s'] = {
            \ 'name' : '+File/WindowSplit',
            \ 'f' : [':w<CR>' , 'Save File'],
            \ 'h' : ['h' , 'Window Split Left'],
            \ 'j' : ['j' , 'Window Split Below'],
            \ 'k' : ['k' , 'Window Split Up'],
            \ 'l' : ['l' , 'Window Split Right'],
            \ }
"
" let g:which_key_map['w'] = {
"             \ 'name' : '+CursorMoveBetweenWindows',
"             \ 'h' : ['h' , 'Cursor move to left window'],
"             \ 'j' : ['j' , 'Cursor move to below window'],
"             \ 'k' : ['k' , 'Cursor move to up window'],
"             \ 'l' : ['l' , 'Cursor move to left window'],
"             \ }

" single key map
" let g:which_key_map['j'] = [ 'i<CR><ESC>' , 'Insert Enter' ]
let g:which_key_map['p'] = [ '\"+p' , 'Paset content from system plate' ]
" let g:which_key_map['y'] = [ '\"+y' , 'Copy content to system plate' ]
" let g:which_key_map['q'] = [ '<C-w>j:q' , 'Close below window' ]
let g:which_key_map['v'] = [ ':Vista!!' , 'Show/Close vista(ctags) window' ]



" ------------------------------
" === ignore key map
" ------------------------------
"
"  ignore single key map
let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'
let g:which_key_map['-'] = 'which_key_ignore'
let g:which_key_map['='] = 'which_key_ignore'

" ignore group key map
" let g:which_key_map['d'] = {'name' : 'which_key_ignore'}
" a → DlvAddBreakpoint        c → DlvClearAll             d → DlvRemoveBreakpoint     i → DlvToggleBreakpoint     r → DlvRemoveTracepoint     s → DlvDebug                t → DlvAddTracepoint        v → DlvVersion

" ------------------------------
" === <localleader> key map
" ------------------------------

let g:local_which_key_map['d'] = {
            \ 'name' : '+Debug',
            \ 'a' : [':DlvAddBreakpoint' , 'Add breakpoint(Go debug Delve)'],
            \ 'c' : [':DlvClearAll' , 'Clear all breakpoint(Go debug Delve)'],
            \ 'd' : [':DlvRemoveBreakpoint' , 'Remove breakpoint(Go debug Delve)'],
            \ 'i' : [':DlvToggleBreakpoint' , 'Add toggle breakpoint(Go debug Delve)'],
            \ 'r' : [':DlvRemoveTracepoint' , 'Remove trace breakpoint(Go debug Delve)'],
            \ 's' : [':DlvDebug' , 'Start debug(Go debug Delve)'],
            \ 't' : [':DlvAddTracepoint' , 'Add trace breakpoint(Go debug Delve)'],
            \ 'v' : [':DlvVersion' , 'Show delve version(Go debug Delve)']
            \}
