"spaceline provide some separator groups, the default group is arrow
" none arrow arrow-fade curve slant slant-fade slant-cons
let g:spaceline_seperate_style= 'arrow-fade'
" custom vim status display. Default is
let g:spaceline_custom_vim_status = {"n": "🅝 ","V":"🅥 ","v":"🅥 ","\<C-v>": "🅥 ","i":"🅘 ","R":"🅡 ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}

" custom buffer number display value is list
" let g:spaceline_custom_buffer_number =

" set your diagnostic plugin. Default is coc, other values are: nvim_lsp, alel
" let g:spaceline_diagnostic_too = 'coc'

" set the error sign. Default is ●
let g:spaceline_diagnostic_errorsign = ' '

" set the warn sign. Default is ●
let g:spaceline_diagnostic_warnsign = ' '

" set the ok sign. Default is 
" let g:spaceline_diagnostic_oksign = ''

" set the git branch icon default is empty
let g:spaceline_git_branch_icon = '⎇ '

" custom diff icon. Default is ['','','']
let g:spaceline_custom_diff_icon = ['','','']

" set the git diff tool default is coc.
" Other values are: git-gutter, which requires needs the vim-gitgutter plugin; vim-signify, which requires the vim-signify plugin.
" let g:spaceline_diff_tool = 'coc'

" set the function icon
" let g:spaceline_function_icon = ''

" set the scroll bar chars. Some alternatives:
" let g:spaceline_scroll_bar_chars = ''

"If you don't like too many symbols in the statusline, just set to 1 (default is 0)
let g:spaceline_line_symbol = 0

"Use this setting to change the spaceline colorscheme,now builtin colorscheme space,one
let g:spaceline_colorscheme = 'space'

" set your lsp plugin. default is coc,other value is nvim_lsp
" let g:spaceline_lsp_executive = 'coc'

" one char wide solid vertical bar This is default
let g:spaceline_scroll_chars = [
  \  ' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█'
  \  ]

" two char wide fade-in blocks
let g:spaceline_scroll_chars = [
  \ '  ', '░ ', '▒ ', '▓ ', '█ ', '█░', '█▒', '█▓', '██'
  \ ]

" three char wide solid horizontal bar
let g:spaceline_scroll_chars = [
  \ '   ', '▏  ', '▎  ', '▍  ', '▌  ',
  \ '▋  ', '▊  ', '▉  ', '█  ', '█▏ ',
  \ '█▎ ', '█▍ ', '█▌ ', '█▋ ', '█▊ ',
  \ '█▉ ', '██ ', '██▏', '██▎', '██▍',
  \ '██▌', '██▋', '██▊', '██▉', '███'
  \ ]

" let g:spaceline_scroll_chars = ['⎺', '⎻', '─', '⎼', '⎽'] " on macOS
let g:spaceline_scroll_chars = ['⎺', '⎻', '⎼', '⎽', '⎯'] " on Linux
