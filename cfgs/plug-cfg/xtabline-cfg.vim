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

" call xtabline#cmds#run("name_tab", expand('%'))
" fun! s:template() abort
"   " Template for tab.
"   return {
"         \ 'name':    expand('%'),
"         \ 'cwd':     s:F.fulldir(getcwd()),
"         \ 'locked':  0,
"         \ 'icon':    '',
"         \ 'files':   [],
"         \ 'buffers': {'valid': [], 'order': [], 'extra': [], 'recent': []},
"         \}
" endfun
