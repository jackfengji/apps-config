"t定义快捷键的前缀<Leader>
:let mapleader = "\\"
set pastetoggle=<leader>p
map <C-w> <C-w><C-w>
map q: :q
map! jj <Esc>

" 使 Y 和 D, C 行为一致
:map Y y$

" gf 打开文件默认后缀
set suffixesadd+=.js

" 启用文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 禁止折行
set nowrap

" 自适应不同语言的智能缩进
filetype indent on
" 启用自动缩进
set autoindent
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" 使制表符可见
set list listchars=tab:▸\

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 启用实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 智能大小写搜索转换
set smartcase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 滚动时的保留行数
set scrolloff=10
" 高亮括号匹配
set showmatch
" 高亮括号匹配的等待时间, 1 = 1/10s
set matchtime=1
" backspace 的有效范围
set backspace=indent,eol,start
" ========== UI 设置 =========
" 语法高亮
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 配色
set background=dark
colorscheme monokai
" colorscheme monokai-soda
" colorscheme solarized

" 显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 显示相对行号
"set relativenumber
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" powerline 设置
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
" 禁用响铃错误提醒
set novisualbell
set visualbell t_vb=

" 增加历史回溯记录
set history=1000
" ========== UI 设置 =========


" ========== Plugin 设置 =========
" vbundle 设置
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'powerline/vim-powerline' "状态栏
Plugin 'scrooloose/nerdtree' "文件管理器
Plugin 'Xuyuanp/nerdtree-git-plugin' "git plugin for nerdtree
"Plugin 'wincent/command-t' "文件快速搜索
Plugin 'godlygeek/tabular' "markdown 文本格式化
Plugin 'plasticboy/vim-markdown' "markdown 支持
Plugin 'mattn/emmet-vim' "zencoding
Plugin 'Valloric/YouCompleteMe' "自动补全
Plugin 'marijnh/tern_for_vim' "javascript 自动补全
Plugin 'tpope/vim-fugitive' "git 支持
"Plugin 'airblade/vim-gitgutter' "git 文件变化提示
Plugin 'scrooloose/syntastic' "语法分析
Plugin 'kchmck/vim-coffee-script' "coffee 语法高亮
"Plugin 'groenewege/vim-less' "less 支持 (卡顿, 禁用)
"Plugin 'skammer/vim-css-color' "让 css 中的 color 带背景色
Plugin 'kien/ctrlp.vim' "文件快速查找
Plugin 'nathanaelkane/vim-indent-guides' "缩进提示
Plugin 'kshenoy/vim-signature' "书签可视化
"Plugin 'majutsushi/tagbar' "tag
"Plugin 'yegappan/grep' "vim grep
"Plugin 'mileszs/ack.vim' "vim ack
Plugin 'dyng/ctrlsf.vim' "全局搜索
Plugin 'scrooloose/nerdcommenter' "快速注释
Plugin 'bling/vim-bufferline' "buffer 状态
Plugin 'tpope/vim-commentary' "[\\]注释
Plugin 'othree/html5.vim' "html5
Plugin 'elzr/vim-json' "json
Plugin 'moll/vim-node' "node gf跳转
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'pangloss/vim-javascript' "js 语法高亮
Plugin 'isRuslan/vim-es6'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'bronson/vim-trailing-whitespace' "行尾空格高亮
"Plugin 'kien/rainbow_parentheses.vim' "括号高亮
"Plugin 'posva/vim-vue'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround' " 括号引号的修改
Plugin 'farmergreg/vim-lastplace' " 上一次打开的位置

call vundle#end()            " required
filetype plugin indent on    " required
" ========== Plugin 设置 =========

"taglist
  "只显示当前文件的taglist，默认是显示多个
  let Tlist_Show_One_File = 1
  "如果taglist是最后一个窗口，则退出vim
  let Tlist_Exit_OnlyWindow = 1
  "在右侧窗口中显示taglist
  let Tlist_Use_Right_Window = 1
  "打开taglist时，光标保留在taglist窗口
  let Tlist_GainFocus_On_ToggleOpen = 1
  "设置ctags命令的位置
  let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
  "设置关闭和打开taglist窗口的快捷键
  "nnoremap <leader>l : Tlist<CR>

"vim-markdown
  " 关闭自动折叠功能
  let g:vim_markdown_folding_disabled=1

"zencoding
  " 绑定快捷键
  map <Leader><tab> <C-y>,
  let g:user_emmet_install_global = 0
  autocmd FileType html EmmetInstall

"nerdtree
  " 绑定快捷键
  :noremap <Leader>e :NERDTreeToggle<CR>
  " 窗口宽度
  let NERDTreeWinSize=60
  " 窗口位置
  let NERDTreeWinPos="left"
  " 显示隐藏文件
  let NERDTreeShowHidden=1
  " 不显示帮助信息
  let NERDTreeMinimalUI=1
  " 删除文件时自动删除文件对应 buffer
  let NERDTreeAutoDeleteBuffer=1
  " 设置忽略文件类型
  let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

  autocmd vimenter * NERDTree "auto open nerdtree
  autocmd VimEnter * wincmd p "focus to last window when open nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"ctrlp
  " 绑定快捷键
  :noremap <Leader>t :CtrlP<CR>
  :noremap <Leader>b :CtrlPBuffer<CR>

"vim-indent-guides
  " 随 vim 自启动
  let g:indent_guides_enable_on_vim_startup=1
  " 从第二层开始可视化显示缩进
  let g:indent_guides_start_level=2
  " 色块宽度
  let g:indent_guides_guide_size=1
  " 背景色
  let g:indent_guides_auto_colors = 0
  hi IndentGuidesOdd  ctermbg=239
  hi IndentGuidesEven  ctermbg=237

"ctrlsf.vim
  " 绑定快捷键
  nnoremap <Leader>s :CtrlSF

"html5
  " Disable event-handler attributes support:
  let g:html5_event_handler_attributes_complete = 0
  " Disable RDFa attributes support:
  let g:html5_rdfa_attributes_complete = 0
  " Disable microdata attributes support:
  let g:html5_microdata_attributes_complete = 0
  " Disable WAI-ARIA attribute support:
  let g:html5_aria_attributes_complete = 0

" neovim python support
let g:python_host_prog = 'python2'
let g:python3_host_prog = 'python3'

" css3 syntax
setlocal iskeyword+=-

" vim-trailing-whitespace
" 一键去除所有行尾空格 (k-vim中为,空格)
map <leader><space> :FixWhitespace<cr>

