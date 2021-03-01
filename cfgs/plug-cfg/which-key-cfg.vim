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

let g:which_key_map['b'] = {
            \ 'name' : '+Buffers',
            \ 'l' : [':XTabListBuffers' , 'List all buffers'],
            \ 'm' : [':XTabMode'        , 'Switch buffer/tab mode'],
            \ 'n' : [':XTabNextBuffer'  , 'Jump to next buffer'],
            \ 'p' : [':XTabPrevBuffer'  , 'Jump to prev buffer'],
            \ 'N' : [':XTabNextBuffer ' , 'Search buffer num and jump to next'],
            \ 'P' : [':XTabPrevBuffer ' , 'Search buffer num and jump to prev'],
            \}

let g:which_key_map['c'] = {
            \ 'name' : '+Content/Comment'      ,
            \ '$' : ['<plug>NERDCommenterToEOL'     , 'CommenterToEOL'],
            \ 'A' : ['<plug>NERDCommenterAppend'    , 'Add comment at end of the current line'],
            \ 'a' : ['<plug>NERDCommenterAltDelims' , 'CommenterAltDelims'],
            \ 'b' : ['<plug>NERDCommenterAlignBoth' , 'CommenterAlignBoth'],
            \ 'c' : ['<plug>NERDCommenterComment'   , 'Comment current line'],
            \ 'd' : ['<plug>NERDCommenterToggle'    , 'Comment/Uncomment current line'],
            \ 'e' : ['<Plug>(coc-translator-e)'     , 'Translate current word and display into command line'],
            \ 'i' : ['<plug>NERDCommenterInvert'    , 'Commenter invert'],
            \ 'j' : [':start<CR><ESC>'              , 'Current position wrap'],
            \ 'l' : ['<plug>NERDCommenterAlignLeft' , 'CommenterAlignLeft'],
            \ 'm' : ['<plug>NERDCommenterMinimal'   , 'CommenterMinimal'],
            \ 'n' : ['<plug>NERDCommenterNested'    , 'CommenterNested'],
            \ 'r' : ['<Plug>(coc-translator-r)'     , 'Translate current word and replace it'],
            \ 's' : ['<plug>NERDCommenterSexy'      , 'CommenterSexy'],
            \ 't' : ['<Plug>(coc-translator-p)'     , 'Translate current word'],
            \ 'u' : ['<plug>NERDCommenterUncomment' , 'Uncomment current line'],
            \ 'y' : ['<plug>NERDCommenterYank'      , 'CommenterYank']
            \}

let g:which_key_map['d'] = {
            \ 'name' : '+Debugger',
            \ 'a' : [ '<Plug>VimspectorToggleConditionalBreakpoint' , '(F9)Toggle conditional line breakpoint on the current line'],
            \ 'c' : [ ':VimspectorReset'                            , 'Close vimspector interface'],
            \ 'd' : [ '<Plug>VimspectorContinue'                    , '(F5)When debugging, continue. Otherwise start debugging'],
            \ 'f' : [ '<Plug>VimspectorAddFunctionBreakpoint'       , '(F8)Add a function breakpoint for the expression under cursor'],
            \ 'i' : [ '<Plug>VimspectorToggleBreakpoint'            , '(<leader>F9)Toggle line breakpoint on the current line'],
            \ 'j' : [ '<Plug>VimspectorStepOver'                    , '(F10)Step Over'],
            \ 'l' : [ '<Plug>VimspectorStepInto'                    , '(F11)Step Into'],
            \ 'n' : [ '<Plug>VimspectorRunToCursor'                 , '(<leader>F8)Run to Cursor'],
            \ 'p' : [ '<Plug>VimspectorPause'                       , '(F6)Pause debugee.'],
            \ 'q' : [ '<Plug>VimspectorStepOut'                     , '(F12)Step out of current function scope'],
            \ 'r' : [ '<Plug>VimspectorRestart'                     , '(F4)Restart debugging with the same configuration'],
            \ 'x' : [ '<Plug>VimspectorStop'                        , '(F3)Stop debugging']
            \}

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

let g:which_key_map['f'] = {
            \ 'name' : '+File/Config' ,
            \ 'c' : [':e ~/.config/nvim/init.vim' , 'Open init.vim in current buffer'],
            \ 's' : [':w'                         , 'Save current file'],
            \ 't' : {
                    \'name' : '+Filetype(Unix/Dos)',
                    \'u' : [':set ff=unix' , 'Convert filetype to unix/linux'],
                    \'d' : [':set ff=dos'  , 'Convert filetype to dos(windows)'],
                    \'?' : [':set ff?'     , 'Current filetype]'],
                    \},
            \ 'e' : {
                    \'name' : '+FileEncoding',
                    \'u' : [':set encoding=UTF-8' , 'Convert encoding to UTF-8'],
                    \'?' : [':set encoding?'      , 'Current file encoding'],
                    \}
            \}

let g:which_key_map['g'] = {
            \ 'name' : '+Git' ,
            \ 'l' : [':FloatermNew lazygit'         , 'Lazygit'],
            \ 'n' : ['<Plug>(GitGutterNextHunk)'    , 'Git next hunk'],
            \ 'm' : [':GitGutterToggle'             , 'Turn on/off gitgutter'],
            \ 'p' : ['<Plug>(GitGutterPrevHunk)'    , 'Git prev hunk'],
            \ 'P' : ['<Plug>(GitGutterPreviewHunk)' , 'Git preview hunk'],
            \ 's' : ['<Plug>(GitGutterStageHunk)'   , 'Git stage hunk'],
            \ 'u' : ['<Plug>(GitGutterUndoHunk)'    , 'Git undo hunk']
            \}

let g:which_key_map['l'] = {
            \ 'name' : '+Languages' ,
            \ 'f' : [':Neoformat'            , 'Format current contents'],
            \ 'r' : [':call CompileRunGcc()' , 'Run current file'],
            \ 'l' : {
                    \'name' : '+Coding',
                    \'a' : ['<Plug>(coc-codeaction)'            , 'Line action'],
                    \'f' : ['<Plug>(coc-format)'                , 'Format(coc)'],
                    \'F' : ['<Plug>(coc-format-selected)'       , 'Format selected(coc)'],
                    \'m' : ['<Plug>(coc-declaration)'           , 'Declaration'],
                    \'p' : [':CocList diagnostics'              , 'Code diagnostics'],
                    \'t' : ['<Plug>(coc-type-definition)'       , 'Go to type definition'],
                    \'d' : ['<Plug>(coc-definition)'            , 'Go to definition'],
                    \'i' : ['<Plug>(coc-implementation)'        , 'Go to implementation'],
                    \'n' : ['<Plug>(coc-diagnostic-next)'       , 'Next diagnostic'],
                    \'r' : ['<Plug>(coc-references)'            , 'Go to references'],
                    \'v' : [':CocList -I symbols '              , 'Symbols list'],
                    \'e' : ['<Plug>(coc-diagnostic-next-error)' , 'Next diagnostic error'],
                    \'l' : ['<Plug>(coc-codelens-action)'       , 'Codelens action'],
                    \'o' : ['CocList outline'                   , 'Outline'],
                    \'s' : ['<Plug>(coc-rename)'                , 'Rename'],
                    \'x' : ['<Plug>(coc-fix-current)'           , 'Fix current']
                    \},
            \ 'v' : {
                    \'name' : '+PythonVenv',
                    \'a' : [':VirtualEnvActivate '  , 'VirtualEnvActivate'],
                    \'d' : [':VirtualEnvDeactivate' , 'VirtualEnvDeactivate'],
                    \'l' : [':VirtualEnvList'       , 'VirtualEnvList']
                    \}
            \}

let g:which_key_map['m'] = {
            \ 'name' : '+Markdown/VimWiki' ,
            \ 'a' : ['<Plug>VimwikiIndex' , 'Vimwiki index'],
            \ 'b' : {'name'  : '+VimwikiTables',
                    \ 'h' : ['<Plug>VimwikiTableMoveColumnLeft'  , 'Move column left'],
                    \ 'l' : ['<Plug>VimwikiTableMoveColumnRight' , 'Move column right']
                    \},
            \ 'c' : {'name'  : '+VimwikiConvert',
                    \ 'b' : ['<Plug>Vimwiki2HTMLBrowse' , 'Convert to html and open browse'],
                    \ 'h' : ['<Plug>Vimwiki2HTML'       , 'Convert to html'],
                    \},
            \ 'd' : {'name'  : '+VimwikiDiary',
                    \ 'a' : ['<Plug>VimwikiDiaryIndex'             , 'Open diary index page'],
                    \ 'i' : ['<Plug>VimwikiDiaryGenerateLinks'     , 'Inser all diary link'],
                    \ 'm' : ['<Plug>VimwikiMakeTomorrowDiaryNote'  , 'Make tomorrow diary'],
                    \ 'v' : ['<Plug>CalendarV'                     , 'Open calendar on left'],
                    \ 'd' : ['<Plug>VimwikiMakeDiaryNote'          , 'Open/make today diary'],
                    \ 'j' : ['<Plug>CalendarH'                     , 'Open calendar on below'],
                    \ 'n' : ['<Plug>CalendarT'                     , 'Open calendar on new tab'],
                    \ 'y' : ['<Plug>VimwikiMakeYesterdayDiaryNote' , 'Open/make yesterday diary'],
                    \ 'h' : [':Calendar'                           , 'Open calendar on left'],
                    \ 'l' : [':CalendarVR'                         , 'Open calendar on right'],
                    \ 't' : ['<Plug>VimwikiTabMakeDiaryNote'       , 'Open today diary']
                    \},
            \ 'e' : ['<Plug>VimwikiSplitLink'      , 'Split and follow'],
            \ 'f' : ['<Plug>(coc-codeaction)'      , 'Format current markdown file'],
            \ 'g' : ['<Plug>VimwikiFollowLink'     , 'Follow/create wiki link'],
            \ 'h' : ['<Plug>VimwikiGoBackLink'     , 'Go back to previously visited vimwiki page'],
            \ 'i' : ['VimwikiGenerateLinks'        , 'Insert a list of wikis'],
            \ 'j' : ['<Plug>VimwikiNextLink'       , 'Find next wiki link'],
            \ 'k' : ['<Plug>VimwikiPrevLink'       , 'Find prev wiki link']                     ,
            \ 'l' : ['<Plug>VimwikiTabnewLink'     , 'Follow wiki link in new tab']                     ,
            \ 'm' : [':TableModeToggle'            , 'Enable/Disable markdown table mode'],
            \ 'p' : ['<Plug>MarkdownPreview'       , 'Preview current markdown into browser'],
            \ 'q' : ['<Plug>MarkdownPreviewStop'   , 'Quit Preview markdown'],
            \ 'r' : ['<Plug>VimwikiRenameLink'     , 'Rename wiki link'],
            \ 's' : ['<Plug>VimwikiUISelect'       , 'List all wikis'],
            \ 't' : ['<Plug>MarkdownPreviewToggle' , 'Start/End preview markdown'],
            \ 'v' : ['<Plug>VimwikiVSplitLink'     , 'Vertical split and follow'],
            \ 'w' : ['<Plug>VimwikiTabIndex'       , 'Open index file in new tab'],
            \ 'x' : ['<Plug>VimwikiToggleListItem' , 'Toggle checkbox of list item on/off'],
            \ 'X' : ['<Plug>VimwikiDeleteLink'     , 'Delete wiki link']
            \}

let g:which_key_map['q'] = {
            \ 'name' : '+Quit' ,
            \ 'a' : [':qall'    , 'Close all windows'],
            \ 'b' : [':XTabCloseBuffer'    , 'Close current buffer'],
            \ 'f' : [':q!'      , 'Force close current window'],
            \ 'h' : ['<C-w>h:q' , 'Close left window'],
            \ 'j' : ['<C-w>j:q' , 'Close below window'],
            \ 'k' : ['<C-w>k:q' , 'Close above window'],
            \ 'l' : ['<C-w>l:q' , 'Close right window'],
            \ 'q' : [':q'       , 'Close current window'],
            \ 'w' : [':wq'      , 'Save current buffer and quit'],
            \}

let g:which_key_map['r'] = {
            \ 'name' : '+Rename' ,
            \ 'n' : ['<Plug>(coc-rename)' , 'Definition rename']
            \}

let g:which_key_map['s'] = {
            \ 'name' : '+Search' ,
            \ 'r' : [':%s//g<left><left>' , 'Global replace characters']
            \}

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

let g:which_key_map['v'] = {
            \ 'name' : '+Vista/Ctags' ,
            \ 'v' : [':Vista!!'                    , 'Open vista window'],
            \ 'l' : [':silent! Vista finder ctags' , 'List all ctags of current buffer']
            \}

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

let g:local_which_key_map['b'] = {
            \ 'name' : '+Bookmark',
            \ 'a' : ['<Plug>BookmarkAnnotate'   , 'Add a bookmark with annotation'],
            \ 'c' : ['<Plug>BookmarkClear'      , 'Clear bookmarks'],
            \ 'C' : ['<Plug>BookmarkClearAll'   , 'Clear all bookmarks'],
            \ 'd' : ['<Plug>BookmarkMoveDown'   , 'Move down current bookmark'],
            \ 'g' : ['<Plug>BookmarkMoveToLine' , 'Move current bookmark to anyline'],
            \ 'i' : ['<Plug>BookmarkToggle'     , 'Add/Remove a bookmark'],
            \ 'l' : ['<Plug>BookmarkShowAll'    , 'List all bookmarks'],
            \ 'n' : ['<Plug>BookmarkNext'       , 'Jump to next bookmark'],
            \ 'p' : ['<Plug>BookmarkPrev'       , 'Jump to prev bookmark'],
            \ 'u' : ['<Plug>BookmarkMoveUp'     , 'Move up current bookmark']
            \}

" 第一个元素表明执行的操作，第二个是该操作的介绍
" group
" 常规模式下输入 cS 清除行尾空格,同时取消高亮 nmap <leader>cs :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号,同时取消高亮 nmap <leader>cm :%s/\r$//g<CR>:noh<CR>
" let g:local_which_key_map['c'] = {
"             \ 'name' : '+Charaters' ,
"             \ 'a' : [':%s/^\s+//g<CR>:noh<CR>'  , 'Clear space start of contents and cancel higlight'],
"             \ 'l' : [':g/^$/d<CR>:noh<CR>'      , 'Clear white space line and cancel higlight'],
"             \ 'm' : [':%s/\r$//g<CR>:noh<CR>'   , 'Clear ^M and cancel highlight'],
"             \ 's' : [':%s/\s\+$//g<CR>:noh<CR>' , 'Clear space end of contents and cancel highlight'],
"             \ 'h' : [':noh'                     , 'Cancel highlight charaters'],
"             \}
let g:local_which_key_map['c'] = {
            \ 'name' : '+Charaters' ,
            \ 'a' : [':call ClearStartSpace()'  , 'Clear space start of contents and cancel higlight'],
            \ 'l' : [':call ClearWhiteLine()'      , 'Clear white space line and cancel higlight'],
            \ 'm' : [':call ClearMSymbol()'   , 'Clear ^M and cancel highlight'],
            \ 's' : [':call ClearEndSpace()' , 'Clear space end of contents and cancel highlight'],
            \ 'h' : [':noh'                     , 'Cancel highlight charaters'],
            \}

func! ClearStartSpace()
    :%s/^\s\+//g
    :noh
endfunc

func! ClearWhiteLine()
    :g/^$/d
    :noh
endfunc

func! ClearMSymbol()
    :%s/\r$//g
    :noh
endfunc

func! ClearEndSpace()
    :%s/\s\+$//g
    :noh
endfunc

let g:local_which_key_map['d'] = {
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

let g:local_which_key_map['f'] = {
            \ 'name' : '+Floaterm' ,
            \ 'a' : [':FloatermFirst'       , 'FloatermFirst'],
            \ 'c' : [':FloatermNew'         , 'FloatermNew'],
            \ 'e' : [':FloatermLast'        , 'FloatermLast'],
            \ 'f' : [':FloatermToggle'      , 'FloatermToggle'],
            \ 'g' : [':FloatermNew lazygit' , 'FloatermNew lazygit'],
            \ 'h' : [':FloatermHide'        , 'FloatermHide'],
            \ 'k' : [':FloatermKill'        , 'FloatermKill'],
            \ 'n' : [':FloatermNext'        , 'FloatermNext'],
            \ 'p' : [':FloatermPrev'        , 'FloatermPrev'],
            \ 'r' : [':FloatermNew ranger'  , 'FloatermNew ranger'],
            \ 's' : [':FloatermShow'        , 'FloatermShow'],
            \ 'z' : [':FloatermNew fzf'     , 'FloatermNew fzf']
            \ }

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
" let g:which_key_map['q'] = [ '<C-w>j:q' , 'Close below window' ]



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

" vimspector有自带快捷键(<leader>F8 <leader>F9)
let g:which_key_map['<F8>'] = 'which_key_ignore'
let g:which_key_map['<F9>'] = 'which_key_ignore'

" ignore group key map
let g:which_key_map['h'] = {'name' : 'which_key_ignore'}


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
