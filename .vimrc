set history=500

filetype plugin on
filetype indent on

set autoread
au FocusGained,BufEnter * checktime

let mapleader = ","

nmap <leader>w :w!<cr>

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

let $LANG='en'
set langmenu=en

set wildmenu

" 忽略文件
set wildignore=*.o,*.pyc

" 显示当前位置
set ruler

" 命令行输入高度
set cmdheight=1

" 显示行号
set number

" 搜索跟随,根据输入不停匹配
set incsearch
set smartcase
set hlsearch

" 对子符号高亮
set showmatch
set mat=2

" tab键
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

syntax enable
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif


" 自动缩进
set ai
set si
set wrap
