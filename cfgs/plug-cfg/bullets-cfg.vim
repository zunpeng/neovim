" You can choose which file types this plugin will work on:
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
" You can disable this plugin for empty buffers (no filetype):
let g:bullets_enable_in_empty_buffers = 0 " default = 1
"
" Enable/disable default key mappings:
" 关闭之后自动编号会失效，如果经常编辑中间存在多空行时编号连续的，最好设置为0,将其自动编号关闭
" 关闭后手动编号就可以了
" 或者如果开启此选项，设置一个快捷键，用于标记添加新行时是否需要自动编号bullets_mapping_leader(在需要自动编号时，先按此快捷键，再插入新行)
" let g:bullets_set_mappings = 0 " default = 1

" Add a leader key before default mappings:
" 先按alt+m再插入新行，会自动编号，不按，则只插入新行，不会自动编号
let g:bullets_mapping_leader = '<M-m>' " default = ''

" Enable/disable deleting the last empty bullet when hitting <cr> (insert mode) or o (normal mode):
" let g:bullets_delete_last_bullet_if_empty = 0 " default = 1

" Line spacing between bullets (1 = no blank lines, 2 = one blank line, etc.):
" 如果设置为2 表示两行之间如果存在一个空行或没有空行，
" 在下面插入一行则会自动进行编号，且，在上面所有存在最多一行空行的编号都会自动重新编号
" 如果设置为1,则没有空行时会自动编号，大于等于1空行不自动编号
let g:bullets_line_spacing = 1 " default = 1

" Don't/add extra padding between the bullet and text when bullets are multiple characters long:
let g:bullets_pad_right = 0 " default = 1
" I. text
" II. text
" III. text
" IV.  text
" V.   text
"     ^ extra spaces to align the text with the longest bullet
let g:bullets_pad_right = 1
" I. text
" II. text
" III. text
" IV. text
"    ^ no extra space between bullet and text

" Maximum number of alphabetic characters to use for bullets:
let g:bullets_max_alpha_characters = 2 " default = 2
" ...
" y. text
" z. text
" aa. text
" ab. text

let g:bullets_max_alpha_characters = 1
" ...
" y. text
" z. text
" text
