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
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set wildmenu

" 禁用vi兼容性
set nocompatible

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
set showmatch  " 高亮显示与之匹配的括号
set mat=2

" tab键
set smarttab
set tabstop=4    " tab占用4个字符
set shiftwidth=4 " 缩进采用4歌空格
set expandtab    " tab替换成空格

" 换行显示
set textwidth=120  " 120字符的时候自动换行显示, 以前大多采用80, 但是现在普遍认为是120

syntax enable
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" 自动缩进
set ai
set si
set wrap
set autoindent
set smartindent


" 添加退出形式,有些终端采用web终端，不允许本地ssh，非常毒瘤，导致有时候esc用不了，给esc做个映射
" 只在insert模式下使用就只是用imap来设定了
imap jj <esc>
