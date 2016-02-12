set nocompatible
filetype off

let os = ""
if has("win32")
    let os = "win"
else
    if has("unix")
        let s:uname = system("uname")
        if s:uname == "Darwin"
            let os = "mac"
        else
            let os = "unix"
        endif
    endif
endif

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'atelierbram/vim-colors_atelier-schemes'
NeoBundle 'jaimebuelta/jaime-vim-colorscheme'
NeoBundle 'goatslacker/mango.vim'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'zanloy/vim-colors-sunburst'
NeoBundle 'dag/vim-fish'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'keith/tmux.vim'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'jpitblado/vim-stata'
NeoBundle 'vim-scripts/groovy.vim'
NeoBundle 'tfnico/vim-gradle'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'vim-scripts/closetag.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'udalov/kotlin-vim'
NeoBundle 'scrooloose/nerdcommenter'

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
set cursorline
if has("gui_running")
    set background=light
    color jaime
    set guifont=Droid\ Sans\ Mono\ for\ Powerline:h13
    hi cursorlinenr guibg=#ffcb69
    hi cursorline gui=NONE guibg=white
    hi cursor guibg=lightblue
    if has("gui_macvim")
        set transparency=5
    endif
else
    set background=dark

    if os == "mac"
        color mango
    endif
    if os == "unix"
        color sunburst
    endif
    if has("win32")
    endif

    hi cursorline cterm=none
    hi cursorlinenr cterm=underline
    if has("unix")
        hi cursorlinenr ctermfg=red
    endif

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

if has("unix")
    set shell=/bin/bash
endif

