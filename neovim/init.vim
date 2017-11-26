" set termguicolors

" Plugin system for plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'MattesGroeger/vim-bookmarks'


" Themes
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Airline symbols
let g:airline_powerline_fonts = 1

" editor options
set nu
syntax enable
syntax on
set cursorline
hi cursorline cterm=none
hi cursorlinenr cterm=underline
if has("unix")
  hi cursorlinenr ctermfg=red
endif
set background=dark

" Tabs and indent
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" Files and backup
set nobackup
set nowb
set noswapfile

" Encoding and file ending
set encoding=utf8
set ffs=unix,dos,mac

" Command keyboards
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
