set nocompatible
filetype off

" What OS are we running?
let os = "" 
if has("win32")||has("win32unix") 
    let os = "win"
else
    if has("unix")
        let s:uname = substitute(system("uname -s"), '\n', '', '')
        if s:uname == "Darwin"
            let os = "mac"
        else
            let os = "unix"
        endif
    endif
endif

if has('vim_starting')
    if os == "win"
        set runtimepath+=~/vimfiles/bundle/Vundle.vim
    elseif has('nvim')
        set runtimepath+=~/.config/nvim/bundle/Vundle.vim
    else
        set runtimepath+=~/.vim/bundle/Vundle.vim
    endif
endif

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" # Syntax plugins
Plugin 'cfdrake/vim-carthage'
Plugin 'jrozner/vim-antlr'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'dag/vim-fish'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'juvenn/mustache.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jpitblado/vim-stata'
Plugin 'vim-scripts/groovy.vim'
Plugin 'tfnico/vim-gradle'
Plugin 'udalov/kotlin-vim'
Plugin 'sevko/vim-nand2tetris-syntax'
Plugin 'vim-scripts/asmM6502.vim'
Plugin 'nickhutchinson/vim-cmake-syntax'
Plugin 'vimscripts/gtk-vim-syntax'

" Theme plugins
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'jaimebuelta/jaime-vim-colorscheme'
Plugin 'goatslacker/mango.vim'
Plugin 'zanloy/vim-colors-sunburst'
Plugin 'mkarmona/materialbox'

" Behaviour plugins
Plugin 'triglav/vim-visual-increment'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'keith/tmux.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'edsono/vim-matchit'
Plugin 'vim-scripts/closetag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'


call vundle#end()

filetype plugin indent on

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

    if has("gui_macvim")
        color materialbox
        set transparency=5
    endif
    
    set guioptions-=T
    set guioptions+=e
    set guitablabel=%M\ %t

    hi cursorlinenr guibg=#ffcb69
    hi cursorline gui=NONE guibg=white
    hi cursor guibg=lightblue
    set guifont=Monoisome\ Regular:h12
else " This is for non graphical UI
    set background=dark

    if os == "unix"||os == "mac"
        set t_Co=256
    endif

    if os == "mac"
        color materialbox
    endif
    if os == "unix"
        color sunburst
    endif
    if has("win32")
        let g:airline_theme = "base16"
        let &t_AB=""
        let &t_AF=""
    endif

    hi cursorline cterm=none
    hi cursorlinenr cterm=underline
    if has("unix")
        hi cursorlinenr ctermfg=red
    endif

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

if has("unix") && $SHELL =~ 'bin/fish'
    set shell=/bin/bash
endif

" Show line numbers in NetRW
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

if os == "win"
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>
endif
