" ----------------------------
" ====== Plug - markdown-preview
" ----------------------------
" 设置为1时，在markdown进入预览区后则自动打开预览
let g:mkdp_auto_start = 0
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0
" 如果设置为1,所有文件都可以使用markdownpreview 命令预览,默认为0
let g:mkdp_command_for_global = 0
" 设置为1时，局域网内其他人也可以预览,默认为0,为0时只能本机预览
let g:mkdp_open_to_the_world = 1
" 用于使用本地浏览器预览远程服务器上vim下的markdown文档,默认为空
let g:mkdp_open_ip = ''
" 预览使用的默认浏览器
let g:mkdp_browser = 'google-chrome-stable'
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
" 自定义的markdown渲染css，路径必须是css文件的绝对路径
let g:mkdp_markdown_css = ''
" 自定义的markdown高亮css，路径必须是css文件的绝对路径
let g:mkdp_highlight_css = ''
" 预览url端口，为空是随机生成一个端口
let g:mkdp_port = '8888'
" markdown 预览窗口标题，${name}是当前文件名称
let g:mkdp_page_title = '「${name}」'
" 预览可识别的文件类型
let g:mkdp_filetypes = ['markdown']
