" 来自于theniceboy
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ]
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
" autocmd Filetype markdown inoremap <buffer> ,t1 \|\|<Enter>\|----\|<Enter>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t2 \|\|<++>\|<Enter>\|----\|----\|<Enter>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t3 \|\|<++>\|<++>\|<Enter>\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t4 \|\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t5 \|\|<++>\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t6 \|\|<++>\|<++>\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t7 \|\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t8 \|\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
" autocmd Filetype markdown inoremap <buffer> ,t9 \|\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Enter>\|----\|----\|----\|----\|----\|----\|----\|----\|----\|<Enter>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>2k0a
"
"创建一行多列表格，使用两个竖线输入相应的标题分割线即可，最多可创建9列表格，如果需要创建多于9列的表格，重复输入即可
autocmd Filetype markdown inoremap <buffer> ,t1 <Esc>$xa\|<++>\|<Esc>5ha
autocmd Filetype markdown inoremap <buffer> ,t2 <Esc>$xa\|<++>\|<++>\|<Esc>10ha
autocmd Filetype markdown inoremap <buffer> ,t3 <Esc>$xa\|<++>\|<++>\|<++>\|<Esc>15ha
autocmd Filetype markdown inoremap <buffer> ,t4 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<Esc>20ha
autocmd Filetype markdown inoremap <buffer> ,t5 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>25ha
autocmd Filetype markdown inoremap <buffer> ,t6 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>30ha
autocmd Filetype markdown inoremap <buffer> ,t7 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>35ha
autocmd Filetype markdown inoremap <buffer> ,t8 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>40ha
autocmd Filetype markdown inoremap <buffer> ,t9 <Esc>$xa\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<++>\|<Esc>45ha



" ------------------------------
" === 快捷键说明
"
" 都是在插入模式下的操作
" ------------------------------
"
" | 快捷键  | 说明                                     |
" |---------+------------------------------------------|
" | ,1      | # H1                                     |
" | ,2      | ## H2                                    |
" | ,3      | ### H3                                   |
" | ,4      | #### H4                                  |
" | ,b      | 粗体文字(Bold text)                      |
" | ,s      | 被划去的文字(sliced text)                |
" | ,i      | 斜体文字(italic text)                    |
" | ,d      | 代码块(code block)                       |
" | ,c      | 大的 代码块(big block of code)           |
" | ,m      | - [ ] 清单(check mark)                   |
" | ,p      | 图片(picture)                            |
" | ,a      | 链接(link)                               |
" | ,n      | ---                                      |
" | ,l      | --------                                 |
" | ,t[1-9] | 创建一行1-9列的表格                      |
" |---------+------------------------------------------|
" | ,f      | 去往下一个 <++> (占位符)                 |
" | ,w      | 去往下一个 <++> (占位符) 并帮你按下Enter |
