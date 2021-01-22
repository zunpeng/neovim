" ------------------------------------------------------------------------------
" ====== Plug - which-key
" -------------------------
" <BackSpace> 退回到上一层
" <ESC> 退出which-key
" 注意：部分快捷键在提示出现时间长之后，再继续按会失效，ESC退出，快按可用（当做快捷键查询便可）
" ------------------------------------------------------------------------------

" Define prefix dictionary(leader)
let g:which_key_map = {}

" Define prefix dictionary(localleader)
let g:local_which_key_map = {}

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
" by defaule timeoutlen is 1000 ms
set timeoutlen=500

" ------------------------------
" === <leader> key map
" ------------------------------

" a  <Plug>BookmarkAnnotate         d  <Plug>BookmarkMoveDown         l  <Plug>BookmarkShowAll          p  <Plug>BookmarkPrev
" b  XTabListBuffers                g  <Plug>BookmarkMoveToLine       m  XTabMode                       s  XTabNextBuffer
" c  <Plug>BookmarkClear            i  <Plug>BookmarkToggle           n  <Plug>BookmarkNext             u  <Plug>BookmarkMoveUp
" C  <Plug>BookmarkClearAll

let g:which_key_map['b'] = {
            \ 'name' : '+Bookmark/Buffer',
            \ 'a' : ['<Plug>BookmarkAnnotate'   , 'Add a bookmark with annotation'],
            \ 'b' : [':XTabListBuffers'         , 'List all buffers'],
            \ 'c' : ['<Plug>BookmarkClear'      , 'Clear bookmarks'],
            \ 'C' : ['<Plug>BookmarkClearAll'   , 'Clear all bookmarks'],
            \ 'd' : ['<Plug>BookmarkMoveDown'   , 'Move down current bookmark'],
            \ 'g' : ['<Plug>BookmarkMoveToLine' , 'Move current bookmark to anyline'],
            \ 'i' : ['<Plug>BookmarkToggle'     , 'Add/Remove a bookmark'],
            \ 'l' : ['<Plug>BookmarkShowAll'    , 'List all bookmarks'],
            \ 'm' : [':XTabMode'                , 'Switch buffer/tab mode'],
            \ 'n' : ['<Plug>BookmarkNext'       , 'Jump to next bookmark'],
            \ 'p' : ['<Plug>BookmarkPrev'       , 'Jump to prev bookmark'],
            \ 's' : [':XTabNextBuffer'          , 'Search buffer num and jump to'],
            \ 'u' : ['<Plug>BookmarkMoveUp'     , 'Move up current bookmark']
            \}

" SPC  <plug>NERDCommenterToggle                 e  <Plug>(coc-translator-e)                  r  <Plug>(coc-translator-r)
"   $  <plug>NERDCommenterToEOL                  i  <plug>NERDCommenterInvert                 s  <plug>NERDCommenterSexy
"   A  <plug>NERDCommenterAppend                 j  i<CR><ESC>                                t  <Plug>(coc-translator-p)
"   a  <plug>NERDCommenterAltDelims              l  <plug>NERDCommenterAlignLeft              u  <plug>NERDCommenterUncomment
"   b  <plug>NERDCommenterAlignBoth              m  <plug>NERDCommenterMinimal                y  <plug>NERDCommenterYank
"   c  <plug>NERDCommenterComment                n  <plug>NERDCommenterNested

let g:which_key_map['c'] = {
            \ 'name' : '+Content/Comment'      ,
            \ 'SPC' : ['<plug>NERDCommenterToggle'    , 'Comment/Uncomment current line'],
            \ '$'   : ['<plug>NERDCommenterToEOL'     , 'CommenterToEOL'],
            \ 'A'   : ['<plug>NERDCommenterAppend'    , 'Add comment at end of the current line'],
            \ 'a'   : ['<plug>NERDCommenterAltDelims' , 'CommenterAltDelims'],
            \ 'b'   : ['<plug>NERDCommenterAlignBoth' , 'CommenterAlignBoth'],
            \ 'c'   : ['<plug>NERDCommenterComment'   , 'Comment current line'],
            \ 'e'   : ['<Plug>(coc-translator-e)'     , 'Translate current word and display into command line'],
            \ 'i'   : ['<plug>NERDCommenterInvert'    , 'Commenter invert'],
            \ 'j'   : ['i<CR><ESC>'                   , 'Split into new line after current cursor'],
            \ 'l'   : ['<plug>NERDCommenterAlignLeft' , 'CommenterAlignLeft'],
            \ 'm'   : ['<plug>NERDCommenterMinimal'   , 'CommenterMinimal'],
            \ 'n'   : ['<plug>NERDCommenterNested'    , 'CommenterNested'],
            \ 'r'   : ['<Plug>(coc-translator-r)'     , 'Translate current word and replace it'],
            \ 's'   : ['<plug>NERDCommenterSexy'      , 'CommenterSexy'],
            \ 't'   : ['<Plug>(coc-translator-p)'     , 'Translate current word'],
            \ 'u'   : ['<plug>NERDCommenterUncomment' , 'Uncomment current line'],
            \ 'y'   : ['<plug>NERDCommenterYank'      , 'CommenterYank']
            \}

" a  DlvAddBreakpoint        d  DlvRemoveBreakpoint     r  DlvRemoveTracepoint     t  DlvAddTracepoint        v  DlvVersion
" c  DlvClearAll             i  DlvToggleBreakpoint     s  DlvDebug
let g:which_key_map['d'] = {
            \ 'name' : '+Debugger',
            \ 'a' : [':DlvAddBreakpoint'    , 'Add breakpoint(Go debug Delve)'],
            \ 'c' : [':DlvClearAll'         , 'Clear all breakpoint(Go debug Delve)'],
            \ 'd' : [':DlvRemoveBreakpoint' , 'Remove breakpoint(Go debug Delve)'],
            \ 'i' : [':DlvToggleBreakpoint' , 'Add toggle breakpoint(Go debug Delve)'],
            \ 'r' : [':DlvRemoveTracepoint' , 'Remove trace breakpoint(Go debug Delve)'],
            \ 's' : [':DlvDebug'            , 'Start debug(Go debug Delve)'],
            \ 't' : [':DlvAddTracepoint'    , 'Add trace breakpoint(Go debug Delve)'],
            \ 'v' : [':DlvVersion'          , 'Show delve version(Go debug Delve)']
            \}
" b  CocCommand explorer --preset buffer                               f  CocCommand explorer --preset floating
" c  CocCommand explorer --preset cocConfig                            l  CocList explPresets
" d  CocCommand explorer --preset .vim                                 n  NERDTreeToggle
" e  CocCommand explorer
let g:which_key_map['e'] = {
            \ 'name' : '+ExplorerTree' ,
            \ 'b' : [':CocCommand explorer --preset buffer'    , 'Open exporer(only buffers)'],
            \ 'c' : [':CocCommand explorer --preset cocConfig' , 'Open explorer(coc config folder)'],
            \ 'd' : [':CocCommand explorer --preset .vim'      , 'Open explorer(vim config folder)'],
            \ 'e' : [':CocCommand explorer'                    , 'Open explorer'],
            \ 'f' : [':CocCommand explorer --preset floating'  , 'Open a float window to show explorer'],
            \ 'l' : [':CocList explPresets'                    , 'Open a window below current window and to search file'],
            \ 'n' : [':NERDTreeToggle'                         , 'Open NerdTree']
            \}

" c  e ~/.config/nvim/init.vim      s  w
let g:which_key_map['f'] = {
            \ 'name' : '+File/Config' ,
            \ 'c' : [':e ~/.config/nvim/init.vim' , 'Open init.vim in current buffer'],
            \ 's' : [':w'                         , 'Save current file']
            \}

" f  Neoformat                      r  call CompileRunGcc()
let g:which_key_map['l'] = {
            \ 'name' : '+Languages' ,
            \ 'f' : [':Neoformat'            , 'Format current contents'],
            \ 'r' : [':call CompileRunGcc()' , 'Run current file']
            \}

" f  <Plug>(coc-codeaction)                    p  <Plug>MarkdownPreview                     t  <Plug>MarkdownPreviewToggle
" m  TableModeToggle                           q  <Plug>MarkdownPreviewStop
let g:which_key_map['m'] = {
            \ 'name' : '+Markdown' ,
            \ 'f' : ['<Plug>(coc-codeaction)'      , 'Format current markdown file'],
            \ 'm' : [':TableModeToggle'            , 'Enable/Disable markdown table mode'],
            \ 'p' : ['<Plug>MarkdownPreview'       , 'Preview current markdown into browser'],
            \ 'q' : ['<Plug>MarkdownPreviewStop'   , 'Quit Preview markdown'],
            \ 't' : ['<Plug>MarkdownPreviewToggle' , 'Start/End preview markdown']
            \}

" r  %s//g<left><left>
let g:which_key_map['s'] = {
            \ 'name' : '+Search' ,
            \ 'r' : [':%s//g<left><left>' , 'Global replace characters']
            \}

" <  -tabmove           i  tabe               n  +tabnext           p  -tabnext           q  bp<cr>:bd #        s  tabnext
" >  +tabmove           l  XTabListTabs
let g:which_key_map['t'] = {
            \ 'name' : '+Tabs' ,
            \ '<' : [':-tabmove'     , 'Move current tab a node to left'],
            \ '>' : [':+tabmove'     , 'Move current tab a node to right'],
            \ 'i' : [':tabe'         , 'Add a empty tab on right'],
            \ 'l' : [':XTabListTabs' , 'List all tabs'],
            \ 'n' : [':+tabnext'     , 'Switch to next tab'],
            \ 'm' : [':XTabMode'     , 'Switch tab/buffer mode'],
            \ 'p' : [':-tabnext'     , 'Switch to prev tab'],
            \ 'q' : [':bp<cr>:bd #'  , 'Quit current tab'],
            \ 's' : [':tabnext '     , 'Switch tab by tabnum']
            \}

" l  silent! Vista finder ctags     v  Vista!!
let g:which_key_map['v'] = {
            \ 'name' : '+Vista/Ctags' ,
            \ 'v' : [':Vista!!'                    , 'Open vista window'],
            \ 'l' : [':silent! Vista finder ctags' , 'List all ctags of current buffer']
            \}
" h  <c-w>h                         k  <c-w>k                         l  <c-w>l                         t  call TerminalToggle()
" j  <c-w>j
let g:which_key_map['w'] = {
            \ 'name' : '+Window' ,
            \ 'h' : ['<c-w>h'                 , 'Switch cursor to left window'],
            \ 'j' : ['<c-w>j'                 , 'Switch cursor to below window'],
            \ 'k' : ['<c-w>k'                 , 'Switch cursor to up window'],
            \ 'l' : ['<c-w>l'                 , 'Switch cursor to right window'],
            \ 't' : [':call TerminalToggle()' , 'Open terminal window'],
            \}

" ------------------------------
" === localleader key map
" ------------------------------

" 第一个元素表明执行的操作，第二个是该操作的介绍
" group
" 常规模式下输入 cS 清除行尾空格,同时取消高亮 nmap <leader>cs :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮 nmap <leader>cm :%s/\r$//g<CR>:noh<CR>
let g:local_which_key_map['c'] = {
            \ 'name' : '+Charaters' ,
            \ 's' : [':%s/\s\+$//g<CR>:noh<CR>' , 'Clear space end of current line and cancel highlight'],
            \ 'm' : [':%s/\r$//g<CR>:noh<CR>'   , 'Clear ^M and cancel highlight'],
            \ 'h' : [':noh'                     , 'Cancel highlight charaters'],
            \}
"
" a  FloatermFirst           f  FloatermToggle          k  FloatermKill            p  FloatermPrev            s  FloatermShow
" c  FloatermNew             h  FloatermHide            n  FloatermNext            r  FloatermNew ranger      z  FloatermNew fzf
" e  FloatermLast
let g:local_which_key_map['f'] = {
            \ 'name' : '+Floaterm' ,
            \ 'a' : [':FloatermFirst'      , 'FloatermFirst'],
            \ 'c' : [':FloatermNew'        , 'FloatermNew'],
            \ 'e' : [':FloatermLast'       , 'FloatermLast'],
            \ 'f' : [':FloatermToggle'     , 'FloatermToggle'],
            \ 'g' : [':FloatermNew lazygi'    , 'FloatermNew lazygit'],
            \ 'h' : [':FloatermHide'       , 'FloatermHide'],
            \ 'k' : [':FloatermKill'       , 'FloatermKill'],
            \ 'n' : [':FloatermNext'       , 'FloatermNext'],
            \ 'p' : [':FloatermPrev'       , 'FloatermPrev'],
            \ 'r' : [':FloatermNew ranger' , 'FloatermNew ranger'],
            \ 's' : [':FloatermShow'       , 'FloatermShow'],
            \ 'z' : [':FloatermNew fzf'    , 'FloatermNew fzf']
            \ }

" f  <Plug>(easymotion-overwin-f)              k  <Plug>(easymotion-k)                      s  <Plug>(easymotion-overwin-f2)
" h  <Plug>(easymotion-linebackward)           l  <Plug>(easymotion-lineforward)            t  <Plug>(easymotion-t2)
" j  <Plug>(easymotion-j)                      L  <Plug>(easymotion-overwin-line)           w  <Plug>(easymotion-overwin-w)
let g:local_which_key_map['s'] = {
            \ 'name' : '+Search/easymotion',
            \ 'f' : ['<Plug>(easymotion-overwin-f)'    , 'Global search one char and move to'],
            \ 'h' : ['<Plug>(easymotion-linebackward)' , 'Search char on cursor left'],
            \ 'j' : ['<Plug>(easymotion-j)'            , 'Search char on cursor below'],
            \ 'k' : ['<Plug>(easymotion-k)'            , 'Search char on cursor up'],
            \ 'l' : ['<Plug>(easymotion-lineforward)'  , 'Search char on cursor right'],
            \ 'L' : ['<Plug>(easymotion-overwin-line)' , 'Search line head char and move to'],
            \ 's' : ['<Plug>(easymotion-overwin-f2)'   , 'Global search two chars and move to'],
            \ 't' : ['<Plug>(easymotion-t2)'           , 'Downward search two chars and move to'],
            \ 'w' : ['<Plug>(easymotion-overwin-w)'    , 'Global search whole words and move to']
            \ }

" h  set splitright<CR>:vsplit                                         j  set nosplitbelow<CR>:split<CR>:set splitbelow
" k  set splitbelow<CR>:split                                          l  set nosplitright<CR>:vsplit<CR>:set splitright
" let g:local_which_key_map['w'] = {
"             \ 'name' : '+CursorMoveBetweenWindows',
"             \ 'h' : [':set splitright<CR>:vsplit'                      , 'Split window on left'],
"             \ 'k' : [':set splitbelow<CR>:split'                       , 'Split window on up'],
"             \ 'j' : [':set nosplitbelow<CR>:split<CR>:set splitbelow'  , 'Split window on below'],
"             \ 'l' : [':set nosplitright<CR>:vsplit<CR>:set splitright' , 'Split window on right'],
"             \ }
" 命令中间存在回车或冒号等，直接配置超时之后会无法继续调用，所以在下面写成函数再调用，即可解决
let g:local_which_key_map['w'] = {
            \ 'name' : '+CursorMoveBetweenWindows',
            \ 'h' : [':call Isplitleft()'  , 'Split window on left'],
            \ 'j' : [':call Isplitbelow()' , 'Split window on below'],
            \ 'k' : [':call Isplitup()'    , 'Split window on up'],
            \ 'l' : [':call Isplitright()' , 'Split window on right'],
            \ }

func! Isplitleft()
    set splitright
    :vsplit
endfunc

func! Isplitup()
    set splitbelow
    :split
endfunc

func! Isplitbelow()
    set nosplitbelow
    :split
    set splitbelow
endfunc

func! Isplitright()
    set nosplitright
    :vsplit
    set splitright
endfunc

" ------------------------------
" === single key map
" ------------------------------
let g:which_key_map['p'] = [ '\"+p' , 'Paset content from system plate' ]
let g:which_key_map['q'] = [ '<C-w>j:q' , 'Close below window' ]



" ------------------------------
" === ignore key map
" ------------------------------
"
"  ignore single key map
" let g:which_key_map.1 = 'which_key_ignore'
" let g:which_key_map.2 = 'which_key_ignore'
" let g:which_key_map.3 = 'which_key_ignore'
" let g:which_key_map.4 = 'which_key_ignore'
" let g:which_key_map.5 = 'which_key_ignore'
" let g:which_key_map.6 = 'which_key_ignore'
" let g:which_key_map.7 = 'which_key_ignore'
" let g:which_key_map.8 = 'which_key_ignore'
" let g:which_key_map.9 = 'which_key_ignore'
" let g:which_key_map['-'] = 'which_key_ignore'
" let g:which_key_map['='] = 'which_key_ignore'

" ignore group key map
" let g:which_key_map['d'] = {'name' : 'which_key_ignore'}


" 注册键位与对应的字典，不然会找不到典而报错undefine
call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',', "g:local_which_key_map")

" let g:which_key_sep = '→'
let g:which_key_sep = ''
" let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" 开启一个新窗口用于显示which-key
let g:which_key_use_floating_win = 0
" 开启后只显示一个状态栏
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
