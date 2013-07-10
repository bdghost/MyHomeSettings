"""""""""""""""""""""""""""""""""""""""
"常规
"""""""""""""""""""""""""""""""""""""""
"编码
set fileencodings=ucs-bom,utf-8,gb18030,gb2312,gbk,cp936
"关闭兼容模式
set nocompatible
"设置鼠标
set mouse=a
set ttymouse=xterm2
"设置mapleader
let g:mapleader=","
"关闭时隐藏缓冲区
set hidden
"使用 X11 剪贴板
set clipboard=unnamed
"自动切换目录
set autochdir

"""""""""""""""""""""""""""""""""""""""
"界面
"""""""""""""""""""""""""""""""""""""""
"显示行号
"set number
"减少刷新和重画
set lazyredraw
"设置跨行键
set whichwrap+=<,>,h,l
"搜索时智能大小写
set ignorecase
set smartcase
"搜索时高亮关键字
set hlsearch
"去除高亮快捷键
nnoremap <leader><space> :nohlsearch<cr>
"设置magic
set magic
"关闭提示音
"set noerrorbells
set visualbell
"set visualbell t_vb=
"高亮列
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""
"文本
"""""""""""""""""""""""""""""""""""""""
"设置Tab键
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
autocmd FileType cpp setlocal tabstop=8 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4
autocmd FileType cmake setlocal tabstop=4 shiftwidth=4
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2
"自动替换Tab
"auto BufReadPost *.c %retab 2
"auto BufReadPost *.h %retab 2
"换行不截断单词
set linebreak
"自动补全
set completeopt=longest,menuone
"set completeopt=longest,menuone,preview
"文本折叠
set foldmethod=indent
set foldlevelstart=99
"展开与折叠开关
nmap <space> zA
"不可见字符
set list
"set listchars=tab:>-,eol:┐

"""""""""""""""""""""""""""""""""""""""
"外观
"""""""""""""""""""""""""""""""""""""""
"高亮当前行
set cursorline
"hi cursorline ctermbg=0

""""""""""""""""""""""""""""""""""""""
"Ctags / Cscope
"""""""""""""""""""""""""""""""""""""""
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
nmap <leader>W :SudoWrite<cr>
imap <leader>W <Esc>:SudoWrite<cr>a
"快速重载.vimrc
map <leader>s :source ~/.vimrc<cr>
"快速编辑.vimrc
map <leader>e :e ~/.vimrc<cr>
"当.vimrc改变时，自动重载（插件也会重新加载）
"autocmd! bufwritepost .vimrc source ~/.vimrc
"切换Tab
"map <c-tab> <esc>:tabnext<cr>
"切换buffer
"nmap <c-n> <esc>:bnext<cr>
"nmap <c-p> <esc>:bprevious<cr>
"分屏相关
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l
"映射冒号
nmap ; :
"折行算作一行
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""
"VAM
"""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/vim-addons/vim-addon-manager
fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  " let g:vim_addon_manager = { your config here see "commented version" example and help
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
                \ shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons(['sensible', 'ctrlp', 'fugitive', 'ag', 'EasyMotion', 'Syntastic', 'Gundo', 'delimitMate', 'powerline', 'obsession', 'vim-signify', 'LustyJuggler', 'YouCompleteMe', 'UltiSnips', 'Indent_Guides', 'SudoEdit', 'Tagbar', 'vimcdoc', 'molokai', 'AutoAlign', 'fcitx', 'Supertab', "The_NERD_Commenter", 'vim-multiple-cursors'], {'auto_install' : 1})
  let g:ft_addons = {
        \ 'python': ['indentpython%3461', 'vim-python-virtualenv'],
        \ 'ruby': ['rails'],
        \ 'slim': ['ZenCoding'],
        \ }
  au FileType * for l in values(filter(copy(ft_addons), string(expand('<amatch>', 1)).' =~ v:key')) | call vam#ActivateAddons(l, {'force_loading_plugins_now':1}) | endfor
endfun
call SetupVAM()

"设置颜色主题
set t_Co=256
colorscheme molokai
"隐藏字符
hi NonText ctermfg=8 ctermbg=none
hi SpecialKey ctermfg=8 ctermbg=none
hi Pmenu ctermfg=grey ctermbg=black
hi PmenuSel ctermfg=yellow ctermbg=black
hi Normal ctermbg=none
hi LineNr0 ctermbg=none
hi Visual ctermfg=lightyellow ctermbg=233

"""""""""""""""""""""""""""""""""""""""
"YCM
"""""""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_key_invoke_completion='<C-j>'
let g:ycm_key_list_select_completion=['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-S-TAB>', '<Up>']

"""""""""""""""""""""""""""""""""""""""
"Supertab
"""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = '<C-TAB>'

"""""""""""""""""""""""""""""""""""""""
"vim-signify
"""""""""""""""""""""""""""""""""""""""
"let g:signify_line_highlight = 1

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
let delimitMate_expand_space = 1
let delimitMate_balance_matchpairs = 1
let delimitMate_quotes = "\" '"
let delimitMate_excluded_ft = "html, rst"
au FileType python let b:delimitMate_nesting_quotes = ['"']

"""""""""""""""""""""""""""""""""""""""
"easymotion
"""""""""""""""""""""""""""""""""""""""
hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=darkgray

"""""""""""""""""""""""""""""""""""""""
"Powerline
"""""""""""""""""""""""""""""""""""""""
"let g:Powerline_symbols = "fancy"

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"""""""""""""""""""""""""""""""""""""""
"Gundo
"""""""""""""""""""""""""""""""""""""""
nnoremap <F9> :GundoToggle<CR>
let g:gundo_right = 1
let g:gundo_close_on_revert = 1
let g:gundo_prefer_python3 = 1

"""""""""""""""""""""""""""""""""""""""
"Ag
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a :Ag

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
"ctrlp
"""""""""""""""""""""""""""""""""""""""
set wildignore+=*.so,*.o,*.pyc,*.pyo,.git,__pycache__,*.swp,*.zip

"""""""""""""""""""""""""""""""""""""""
"Indent Guides
"""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors = 0
hi IndentGuidesEven ctermbg = 236
hi IndentGuidesOdd ctermbg = 237
let g:indent_guides_guide_size = 1
autocmd FileType python :IndentGuidesEnable

"""""""""""""""""""""""""""""""""""""""
"ZenCoding
"""""""""""""""""""""""""""""""""""""""
let g:user_zen_leader_key = '`'
let g:use_zen_complete_tag = 1

