"设定操作系统
function! MySys()
return "linux"
endfunction

"""""""""""""""""""""""""""""""""""""""
"常规
"""""""""""""""""""""""""""""""""""""""
"编码
set fileencodings=ucs-bom,utf-8,gb18030,gb2312,gbk,cp936
"文件类型识别
filetype plugin indent on
"设置shell
if MySys() == "linux"
set shell=bash
endif
"关闭兼容模式
set nocompatible
"外部修改时自动读取
set autoread
"设置鼠标
set mouse=a
"设置历史
set history=400
"设置mapleader
let mapleader=","
let g:mapleader=","
let g:C_MapLeader=","
"设置Tlist
"let Tlist_Show_One_File=1
"let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_SingleClick=1
let Tlist_Auto_Highlight_Tag=1
let tlist_make_settings='make;m:makros;t:targets'
let tlist_qmake_settings='qmake;t:SystemVariables'
"winManager
let g:persistentBehaviour=0
let g:winManagerWindowLayout='BufExplorer,FileExplorer|TagList'
:set cscopequickfix=s-,c-,d-,i-,t-,e-

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
set cmdheight=2
"减少刷新和重画
set lz
"设置退格键
set backspace=eol,start,indent
"设置跨行键
set whichwrap+=<,>,h,l
"搜索时忽略大小写
set ignorecase
"搜索时高亮关键字
set hlsearch
"设置magic
set magic
"关闭提示音
set noerrorbells
set novisualbell
set vb t_vb=
"自动匹配括号
set showmatch
set mat=2

"""""""""""""""""""""""""""""""""""""""
"文本
"""""""""""""""""""""""""""""""""""""""

"设置Tab键
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
"自动缩进与智能缩进
set autoindent
set smartindent
"换行不截断单词
set linebreak
"C风格缩进
set cindent
set guifont=terminus\ 10
"自动补全
set completeopt=longest,menuone

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
colorscheme darkblue
"高亮当前行
set cursorline
if has("gui_running")
    colorscheme slate
	hi cursorline guibg=#333333
	hi CursorColumn guibg=#333333
endif
"高亮菜单
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

""""""""""""""""""""""""""""""""""""""
"Ctags 
"""""""""""""""""""""""""""""""""""""""

"set tags+=~/.vim/gtktags
set autochdir

"""""""""""""""""""""""""""""""""""""""
"补全快捷键
"""""""""""""""""""""""""""""""""""""""

 function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>

""""""""""""""""""""""""""""""""""""""
"快捷键
"""""""""""""""""""""""""""""""""""""""
"Tlist
noremap <silent> <F10> <Esc><Esc>:Tlist<CR>
inoremap <silent> <F10> <Esc><Esc>:Tlist<CR>
map <leader>w :WMToggle<cr>
"快速保存
nmap w :w<cr>
"快速重载.vimrc
"map <leader>s :source ~/.vimrc<cr>
"快速编辑.vimrc
"map <leader>e :e ~/.vimrc<cr>
"当.vimrc改变时，自动重载
autocmd! bufwritepost vimrc source ~/.vimrc
"Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>
"Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''
"去除空行
map <F3> :g/^$/d<cr>
"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>
"切换Tab
map <c-tab> <esc>:tabnext<cr>
"切换buffer
map <leader>n <esc>:bnext<cr>
map <leader>p <esc>:bprevious<cr>
"生成Ctags
map <leader>cta <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>:TlistUpdate<CR>

"""""""""""""""""""""""""""""""""""""""
"Python
"""""""""""""""""""""""""""""""""""""""

"自动补全
autocmd FileType python set complete+=k~/.vim/pydiction isk+=.,
"快速运行
au FileType python map <buffer> <leader><space> :w!<cr>:!python %<cr>
"快速补全
au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $s self
au FileType python inoremap <buffer> $c ##<cr>#<space><cr>#<esc>kla
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $d """<cr>"""<esc>O