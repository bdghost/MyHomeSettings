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
colorscheme slate
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
map <leader>cta <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>:TlistUpdate<CR>
autocmd FileType c set tags+=~/.vim/bundle/other/systags

"""""""""""""""""""""""""""""""""""""""
"跳转到上次编辑位置
"""""""""""""""""""""""""""""""""""""""

:autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"""""""""""""""""""""""""""""""""""""""
"Man Pages
"""""""""""""""""""""""""""""""""""""""

runtime ftplugin/Man.vim

"""""""""""""""""""""""""""""""""""""""
"编译运行
"""""""""""""""""""""""""""""""""""""""

"func CompileRun()
"    exec "w"
"    "C程序
"    if &filetype == 'c'
"        exec "!gcc -g -Wall -lm % -o %<"
"        exec "!./%<"
"    elseif &filetype == 'cpp'
"        exec "!g++ %  -o %<"
"        exec "!./%<"
"    elseif &filetype == 'python'
"        exec "!python %"
"        exec "!pwd"
"    endif
"endfunc 

"""""""""""""""""""""""""""""""""""""""
"插件
"""""""""""""""""""""""""""""""""""""""
"设置Tlist
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_SingleClick=1
let Tlist_Auto_Highlight_Tag=1
let tlist_make_settings='make;m:makros;t:targets'
let tlist_qmake_settings='qmake;t:SystemVariables'
"设置WinManager
let g:persistentBehaviour=0
let g:winManagerWindowLayout='BufExplorer,FileExplorer|TagList'
:set cscopequickfix=s-,c-,d-,i-,t-,e-
"设置Pylint
"autocmd FileType python compiler pylint
let g:pylint_onwrite = 0

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
map <F10> :WMToggle<cr>
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
nmap <c-n> <esc>:bnext<cr>
nmap <c-p> <esc>:bprevious<cr>
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

"""""""""""""""""""""""""""""""""""""""
"Python
"""""""""""""""""""""""""""""""""""""""

"自动补全
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
let g:acp_completeoptPreview=1
let g:acp_behaviorKeywordLength=1
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
