" 默认值：1
" 插件会自动更新已经存在的 Table of Contents，如果你不想要这个功能，可以在你的 vimrc 文件里加入如下内容关闭：
" let g:vmt_auto_update_on_save=0

" =======================================================
" 默认值：0
" 在默认情况下，:GenTocXXX 命令会在插入的 Table of Contents 前后加上 <!-- vim-markdown-toc -->，这是为了实现自动和手动更新 Table of Contents 功能。
" 如果你不想看到它们，可以在 vimrc 文件里加入如下内容移除：
" 需要注意的是移除之后插件将无法再帮你保存文件时自动更新 Table of Contents 了，也无法使用 :UpdateToc 命令了。这里如果还想更新 Table of Contents，只能先手动删除已经存在的，然后重新运行 :GenTocXXX 命令。
" let g:vmt_dont_insert_fence=1

" =======================================================
" 默认值：0
" 在默认情况下，所有 Table of Contents 项目前面的标记都是 *：
" * [Level 1](#level-1)
"     * [Level 1-1](#level-1-1)
"     * [Level 1-2](#level-1-2)
"         * [Level 1-2-1](#level-1-2-1)
" * [Level 2](level-2)
" 这里提供一个选项改变这个行为，如果设置：
" 那标记将根据级别循环使用 *、- 和 +：
" * [Level 1](#level-1)
"     - [Level 1-1](#level-1-1)
"     - [Level 1-2](#level-1-2)
"         + [Level 1-2-1](#level-1-2-1)
" * [Level 2](level-2)
" 这不会影响 Markdown 文档解析后的显示效果，只用于提升源文件的可读性。
" let g:vmt_cycle_list_item_markers=1
