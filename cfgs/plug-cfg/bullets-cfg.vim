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
let g:bullets_set_mappings = 0 " default = 1

" Add a leader key before default mappings:
" let g:bullets_mapping_leader = '<M-b>' " default = ''

" Enable/disable deleting the last empty bullet when hitting <cr> (insert mode) or o (normal mode):
" let g:bullets_delete_last_bullet_if_empty = 0 " default = 1

" Line spacing between bullets (1 = no blank lines, 2 = one blank line, etc.):
let g:bullets_line_spacing = 2 " default = 1

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
