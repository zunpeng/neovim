" 0	Prevent any default key mapping from being created
let g:bookmark_no_default_key_mappings = 1
" 0	Save bookmarks per working dir, the folder you opened vim from
let g:bookmark_save_per_working_dir = 1
" 1	Enables/disables automatic saving for bookmarks
let g:bookmark_auto_save = 1
" 0	Enables/disables line highlighting
let g:bookmark_highlight_lines = 1
" 0	Save bookmarks when leaving a buffer, load when entering one
let g:bookmark_manage_per_buffer = 1
" 0	Enables/disables line centering when jumping to bookmark
let g:bookmark_center = 1
" 0	Automatically close bookmarks split when jumping to a bookmark
let g:bookmark_auto_close = 1
" 0	Use the location list to show all bookmarks
" let g:bookmark_location_list = 1

" ⚑	Sets bookmark icon for sign column
let g:bookmark_sign = ''

" " ☰	Sets bookmark annotation icon for sign column
" let g:bookmark_annotation_sign = '##'
" " $HOME .'/.vim-bookmarks'	Sets file for auto saving (ignored when bookmark_save_per_working_dir is enabled)
" let g:bookmark_auto_save_file = '$HOME/.config/nvim/tmp/bookmarks'
" " 1	Enables/disables warning when clearing all bookmarks
" let g:bookmark_show_warning = 0
" " 1	Enables/disables warning when toggling to clear a bookmark with annotation
" let g:bookmark_show_toggle_warning = 0
" " 0	Disable ctrlp interface when show all bookmarks
" let g:bookmark_disable_ctrlp = 1
