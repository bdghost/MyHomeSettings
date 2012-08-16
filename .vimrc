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
set ttymouse=xterm2
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
"关闭时隐藏缓冲区
set hidden
"使用 X11 剪贴板
set clipboard=unnamed

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
set lazyredraw
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
set colorcolumn=85

"""""""""""""""""""""""""""""""""""""""
"文本
"""""""""""""""""""""""""""""""""""""""
"设置Tab键
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4
"自动替换Tab
auto BufReadPost *.c %retab 2
auto BufReadPost *.h %retab 2
"自动缩进与智能缩进
set autoindent
set smartindent
"换行不截断单词
set linebreak
"C风格缩进
"set cindent
set guifont=Ubuntu\ Mono\ for\ Powerline\ 11
"自动补全
set completeopt=longest,menuone,preview
"文本折叠
"set foldmethod=indent
"不可见字符
set list
set listchars=tab:>-,eol:┐

"""""""""""""""""""""""""""""""""""""""
"状态条
"""""""""""""""""""""""""""""""""""""""
set laststatus=2

"""""""""""""""""""""""""""""""""""""""
"外观
"""""""""""""""""""""""""""""""""""""""
"语法高亮
syntax enable
"高亮当前行
set cursorline
set nocursorcolumn
"hi cursorline ctermbg=0

""""""""""""""""""""""""""""""""""""""
"Ctags / Cscope
"""""""""""""""""""""""""""""""""""""""
set autochdir
"生成Ctags
map <leader>cta <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
autocmd FileType cpp set tags+=~/.vim/qt_tags
:set cscopequickfix=s-,c-,d-,i-,t-,e-

"""""""""""""""""""""""""""""""""""""""
"跳转到上次编辑位置
"""""""""""""""""""""""""""""""""""""""
:autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

""""""""""""""""""""""""""""""""""""""
"快捷键
"""""""""""""""""""""""""""""""""""""""

"快速保存
nmap <leader>w :w<cr>
imap <leader>w <Esc>:w<cr>a
"nmap <leader>W :w !sudo tee % >/dev/null<cr>
"imap <leader>W <Esc>:w !sudo tee % >/dev/null<cr>a
nmap <leader>W :SudoWrite<cr>
imap <leader>W <Esc>:SudoWrite<cr>a
"Paste开关
set pastetoggle=<F2>
"删除空行上的缩进
"map <F3> :%s/\s*$//g<cr>:noh<cr>''
"去除空行
"map <F4> :g/^$/d<cr>:noh<cr>''
"编译运行
"map <F5> :call CompileRun()<CR> 
"map <F5> :cd ..<cr>:!sudo ./setup.py install --prefix=/usr && yaner<CR>:cd Yaner<cr>
"保存并关闭
"map <F11> :x<cr>
"不保存关闭
"map <F12> :q!<cr>
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



"""""""""""""""""""""""""""""""""""""""
"VAM
"""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/vim-addons/vim-addon-manager
call vam#ActivateAddons(['Command-T', 'fugitive', 'ack', 'EasyMotion', 'Syntastic', 'Gundo', 'indentpython%3461', 'delimitMate', 'Powerline', 'LustyJuggler', 'vimproc', 'unite', 'neocomplcache', 'neocomplcache-snippets-complete', 'Indent_Guides', 'SudoEdit', 'ragtag', 'github:majutsushi/tagbar', 'github:liangfeng/vimcdoc', 'molokai', 'Lucius'], {'auto_install' : 1})
call vam#install#Install(['snipmate', 'snipmate-snippets', 'cscope_macros', 'c213', 'CCTree', 'rails', 'fcitx', 'gtk-vim-syntax', 'CSApprox'], {'auto_install' : 1})

"设置颜色主题
set t_Co=256
colorscheme molokai
"隐藏字符
hi NonText ctermfg=8 ctermbg=none
hi SpecialKey ctermfg=8 ctermbg=none
hi Normal ctermbg=none
hi LineNr0 ctermbg=none

"""""""""""""""""""""""""""""""""""""""
"Tagbar
"""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_foldlevel = 2
let g:tagbar_autoshowtag = 1
nmap <F10> :TagbarOpenAutoClose<cr>
"autocmd VimEnter * nested TagbarOpen

"""""""""""""""""""""""""""""""""""""""
"delimitMate
"""""""""""""""""""""""""""""""""""""""
let delimitMate_expand_cr = 1
let delimitMate_quotes = "\" '"
let delimitMate_excluded_ft = "html, rst"

"""""""""""""""""""""""""""""""""""""""
"easymotion
"""""""""""""""""""""""""""""""""""""""
hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=darkgray

"""""""""""""""""""""""""""""""""""""""
"Powerline
"""""""""""""""""""""""""""""""""""""""
let g:Powerline_symbols = "fancy"

"""""""""""""""""""""""""""""""""""""""
"neocomplcache
"""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 20
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_min_keyword_length = 2
let g:neocomplcache_manual_completion_start_length = 2
let g:neocomplcache_enable_cursor_hold_i = 1
let g:neocomplcache_enable_insert_char_pre = 1
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.python = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.python3 = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"let g:neocomplcache_snippets_disable_runtime_snippets = 1
"imap <C-k>     <Plug>(neocomplcache_snippets_expand)
"smap <C-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-l>  neocomplcache#complete_common_string()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""
"Gundo
"""""""""""""""""""""""""""""""""""""""
nnoremap <F9> :GundoToggle<CR>
let g:gundo_right = 1
let g:gundo_close_on_revert = 1
let g:gundo_prefer_python3 = 1

"""""""""""""""""""""""""""""""""""""""
"Ack
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a :Ack 

"""""""""""""""""""""""""""""""""""""""
"lusty
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>b :LustyJuggler<CR>
let g:LustyJugglerShowKeys = 'a'

"""""""""""""""""""""""""""""""""""""""
"fugitive
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>g :Git 
autocmd BufReadPost fugitive://* set bufhidden=delete

"""""""""""""""""""""""""""""""""""""""
"Command-T
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :CommandT ..<CR>
:set wildignore+=*.o,*.pyc,*.pyo,.git,__pycache__

"""""""""""""""""""""""""""""""""""""""
"pyflakes
"""""""""""""""""""""""""""""""""""""""
let g:pyflakes_use_quickfix = 0

"""""""""""""""""""""""""""""""""""""""
"pylint
"""""""""""""""""""""""""""""""""""""""
"autocmd FileType python compiler pylint
"let g:pylint_onwrite = 0

"""""""""""""""""""""""""""""""""""""""
"Indent Guides
"""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors = 0
hi IndentGuidesEven ctermbg = 236
hi IndentGuidesOdd ctermbg = 237
let g:indent_guides_guide_size = 1
autocmd FileType python :IndentGuidesEnable

"""""""""""""""""""""""""""""""""""""""
"Python
"""""""""""""""""""""""""""""""""""""""

"自动补全
"let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
autocmd FileType python setlocal omnifunc=python3complete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
"autocmd FileType ada setlocal omnifunc=adacomplete#Complete
"autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType xhtml setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete

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

"""""""""""""""""""""""""""""""""""""""
"VAM Full
"""""""""""""""""""""""""""""""""""""""
"fun SetupVAM()
"    " YES, you can customize this vam_install_path path and everything still works!
"    let vam_install_path = expand('$HOME') . '/.vim/vim-addons'
"    exec 'set runtimepath+='.vam_install_path.'/vim-addon-manager'
"
"    if !filereadable(vam_install_path.'/vim-addon-manager/.git/config') && 1 == confirm("git clone VAM into ".vam_install_path."?","&Y\n&N")
"        exec '!p='.shellescape(vam_install_path).'; mkdir -p "$p" && cd "$p" && git clone --depth 1 git://github.com/MarcWeber/vim-addon-manager.git'
"        " VAM run helptags automatically if you install or update plugins
"        exec 'helptags '.fnameescape(vam_install_path.'/vim-addon-manager/doc')
"    endif
"
"    " Example drop git sources unless git is in PATH. Same plugins can
"    " be installed form www.vim.org. Lookup MergeSources to get more control
"    " let g:vim_addon_manager['drop_git_sources'] = !executable('git')
"
"    call vam#ActivateAddons([], {'auto_install' : 0})
"    " sample: call vam#ActivateAddons(['pluginA','pluginB', ...], {'auto_install' : 0})
"    " where 'pluginA' could be "git://" "github:YourName" or "snipmate-snippets" see vam#install#RewriteName()
"endf
"call SetupVAM()
"" experimental: run after gui has been started (gvim) [3]
"" option1: au VimEnter * call SetupVAM()
"" option2: au GUIEnter * call SetupVAM()

