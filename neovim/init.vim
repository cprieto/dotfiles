" set termguicolors

" Plugin system
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/vinarise.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'elixir-editors/vim-elixir'
Plug 'sbdchd/vim-run'
Plug 'wincent/command-t'

" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'tyrannicaltoucan/vim-quantum'

" Additional syntax highlight
Plug 'fatih/vim-go'
Plug 'dag/vim-fish'

call plug#end()

" editor options
set nu
syntax enable
syntax on
set background=dark
set termguicolors
if has("unix")
  colorscheme quantum
  let g:quantum_italics=1
  set guifont=DroidSansMono_Nerd_Font:h11
  let g:airline_theme='quantum'
  set cursorline
  if has("macunix")
    highlight Normal guibg=None
  endif
else " This is Windows environment in Powershell maybe
  hi cursorlinenr gui=underline
  hi cursorlinenr guifg=red
  hi cursorline guibg=none
  set cursorline
endif

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

" Keyboard shortcuts
map <silent> <C-n> :NERDTreeToggle<cr>

" Airline symbols
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
set noshowmode

