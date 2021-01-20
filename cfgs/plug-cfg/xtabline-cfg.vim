" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
let g:xtabline_settings.theme = 'tomorrow'
" let g:xtabline_settings.theme = 'dracula'
noremap to :XTabCycleMode<CR>
noremap \p :echo expand('%:p')<CR>

" xtabline 在打开文件时没有默认设置标签名称
" 本处修改：打开文件时默认将文件名设置为tabname，nmap <leader>ta :XTabListTabs<CR>调出tab列表时可以直观看到所有带有文件名的tab
au BufEnter * exec "call SetXtabName()"
func! SetXtabName()
    call xtabline#cmds#run("name_tab", expand('%'))
endfunc
