let g:coc_explorer_global_presets = {
            \   '.vim': {
            \     'root-uri': '~/.config/nvim',
            \   },
            \   'cocConfig': {
            \      'root-uri': '~/.config/nvim/coc-settings.json',
            \   },
            \   'tab': {
            \     'position': 'tab',
            \     'quit-on-open': v:true,
            \   },
            \   'floating': {
            \     'position': 'floating',
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   'floatingTop': {
            \     'position': 'floating',
            \     'floating-position': 'center-top',
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   'floatingLeftside': {
            \     'position': 'floating',
            \     'floating-position': 'left-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   'floatingRightside': {
            \     'position': 'floating',
            \     'floating-position': 'right-center',
            \     'floating-width': 50,
            \     'open-action-strategy': 'sourceWindow',
            \   },
            \   'simplify': {
            \     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
            \   },
            \   'buffer': {
            \     'sources': [{'name': 'buffer', 'expand': v:true}]
            \   },
            \ }

" 如果是最后一个窗口，退出时自动关闭coc-explorer
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
"autocmd BufEnter * exec 'CocCommand explorer'

" " Use preset argument to open it
" nmap <space>ed :CocCommand explorer --preset .vim<CR>
" nmap <space>ef :CocCommand explorer --preset floating<CR>
" nmap <space>ec :CocCommand explorer --preset cocConfig<CR>
" nmap <space>eb :CocCommand explorer --preset buffer<CR>
"
" " List all presets
" nmap <space>el :CocList explPresets<CR>
"
" nmap <space>et :CocCommand explorer<CR>
