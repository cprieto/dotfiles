" ** CoC configuration **
let g:cursorhold_updatetime=100

set hidden
set nobackup
set nowritebackup

" more space for displaying messages.
set cmdheight=2
set updatetime=300

set shortmess+=c

if has("nvim-0.5.0")
	set signcolumn=number
else
	set signcolumn=yes
endif

