"""""""""""""""""""""""""""""""""""""""
"常规
"""""""""""""""""""""""""""""""""""""""
"编码
set fileencodings=ucs-bom,utf-8,gb18030,gb2312,gbk,cp936
"文件类型识别
filetype plugin indent on
"设置shell
set shell=bash
"关闭兼容模式
set nocompatible
"外部修改时自动读取
set autoread
"设置鼠标
set mouse=a
"设置历史
set history=400
"设置缺省路径
set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
"设置mapleader
let mapleader=","
let g:mapleader=","
let g:C_MapLeader=","
"关闭modelines
set modelines=0
"开启 pathogen
call pathogen#runtime_append_all_bundles()

"""""""""""""""""""""""""""""""""""""""
"界面
"""""""""""""""""""""""""""""""""""""""

"显示行号
set number
"显示光标位置
set ruler
"增强命令行补全
set wildmenu
"设置命令行高度
set cmdheight=1
"减少刷新和重画
"set lazyredraw
"设置退格键
set backspace=eol,start,indent
"设置跨行键
set whichwrap+=<,>,h,l
"搜索时智能大小写
set smartcase
"搜索时高亮关键字
set hlsearch
"即时搜索
set incsearch
"去除高亮快捷键
nnoremap <leader><space> :noh<cr>
"设置magic
set magic
"关闭提示音
set noerrorbells
set visualbell
"set visualbell t_vb=
"自动匹配括号
set showmatch
set mat=2
"高亮列
"set colorcolumn=85

"""""""""""""""""""""""""""""""""""""""
"文本
"""""""""""""""""""""""""""""""""""""""

"设置Tab键
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
"自动替换Tab
auto BufReadPost	*.c	%retab 4
auto BufReadPost	*.h	%retab 4
"自动缩进与智能缩进
set autoindent
set smartindent
"换行不截断单词
set linebreak
"C风格缩进
"set cindent
set guifont=terminus\ 10
"自动补全
set completeopt=longest,menuone,preview
"文本折叠
"set foldmethod=indent
"不可见字符
set list
set listchars=tab:>-,eol:☠

"""""""""""""""""""""""""""""""""""""""
"状态条
"""""""""""""""""""""""""""""""""""""""

set laststatus=2

"""""""""""""""""""""""""""""""""""""""
"外观
"""""""""""""""""""""""""""""""""""""""

"语法高亮
syntax enable
"设置颜色主题
set t_Co=256
colorscheme desert
"隐藏字符
hi NonText ctermfg=8
hi SpecialKey ctermfg=8
"高亮当前行
set cursorline
set nocursorcolumn
"hi cursorline ctermbg=0

""""""""""""""""""""""""""""""""""""""
"Ctags 
"""""""""""""""""""""""""""""""""""""""

set autochdir
"生成Ctags
map <leader>cta <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
autocmd FileType c set tags+=~/.vim/bundle/other/systags

"""""""""""""""""""""""""""""""""""""""
"跳转到上次编辑位置
"""""""""""""""""""""""""""""""""""""""

:autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"""""""""""""""""""""""""""""""""""""""
"插件
"""""""""""""""""""""""""""""""""""""""
"设置Tagbar
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_foldlevel = 2
let g:tagbar_autoshowtag = 1
autocmd VimEnter * nested TagbarOpen
"设置delimitMate
let delimitMate_expand_cr = 1
"设置easymotion
hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=darkgray
"设置neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 20
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_snippets_disable_runtime_snippets = 1
"imap <C-k>     <Plug>(neocomplcache_snippets_expand)
"smap <C-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-l>     neocomplcache#complete_common_string()
imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"设置AutoComplPop
"let g:acp_enableAtStartup=0
"let g:acp_completeoptPreview=1
"let g:acp_behaviorKeywordLength=1
"设置WinManager
"let g:persistentBehaviour=0
"let g:winManagerWindowLayout='BufExplorer,FileExplorer|TagList'
"设置Pylint
"autocmd FileType python compiler pylint
"let g:pylint_onwrite = 0
:set cscopequickfix=s-,c-,d-,i-,t-,e-

""""""""""""""""""""""""""""""""""""""
"快捷键
"""""""""""""""""""""""""""""""""""""""

"快速保存
nmap <leader>w :w<cr>
imap <leader>w <Esc>:w<cr>a
"Paste开关
set pastetoggle=<F2>
"删除空行上的缩进
map <F3> :%s/\s*$//g<cr>:noh<cr>''
"去除空行
map <F4> :g/^$/d<cr>:noh<cr>''
"编译运行
"map <F5> :call CompileRun()<CR> 
map <F5> :cd ..<cr>:!sudo ./setup.py install --prefix=/usr && yaner<CR>:cd Yaner<cr>
"WinManager开关
nmap <F10> :TagbarToggle<cr>
"保存并关闭
map <F11> :x<cr>
"不保存关闭
map <F12> :q!<cr>
"快速重载.vimrc
map <leader>s :source ~/.vimrc<cr>
"快速编辑.vimrc
map <leader>e :e ~/.vimrc<cr>
"当.vimrc改变时，自动重载
autocmd! bufwritepost .vimrc source ~/.vimrc
"切换Tab
"map <c-tab> <esc>:tabnext<cr>
"切换buffer
"nmap <c-n> <esc>:bnext<cr>
"nmap <c-p> <esc>:bprevious<cr>
"展开与折叠开关
nmap <space> za
"分屏相关
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l
"映射冒号
nmap ; :
"剪贴板
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
"折行算作一行
nnoremap j gj
nnoremap k gk
"以 root 权限保存
cmap w!! w !sudo tee % >/dev/null

"""""""""""""""""""""""""""""""""""""""
"Python
"""""""""""""""""""""""""""""""""""""""

"自动补全
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ada set omnifunc=adacomplete#Complete
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType xhtml set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType sql set omnifunc=sqlcomplete#Complete
"快速运行
au FileType python map <buffer> <leader><space> :w!<cr>:!python %<cr>

"""""""""""""""""""""""""""""""""""""""
"Vala
"""""""""""""""""""""""""""""""""""""""

autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

"""""""""""""""""""""""""""""""""""""""
"Genie
"""""""""""""""""""""""""""""""""""""""

augroup setgenie
    au!
    au BufNewFile *.gs setlocal filetype="genie"
    au BufRead *.gs setlocal filetype="genie"
augroup END 
