set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'atelierbram/vim-colors_atelier-schemes'
NeoBundle 'jaimebuelta/jaime-vim-colorscheme'
NeoBundle 'goatslacker/mango.vim'
NeoBundle 'ekalinin/Dockerfile.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck

" General section
set history=700

set autoread
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set hid
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

" Colors!
syntax enable
syntax on
if has("gui_running")
    set background=light
    color jaime
    set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
    set transparency=5
else
    set background=dark
    color mango
endif

if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

set encoding=utf8
set ffs=unix,dos,mac

" Files and backup
set nobackup
set nowb
set noswapfile

" Tabs and indent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set nu

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Powerline
set laststatus=2
let g:airline_powerline_fonts=1

let g:mustache_abbreviations = 1
