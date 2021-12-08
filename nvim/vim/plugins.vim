call plug#begin('~/.vim/plugged')

Plug 'nathom/filetype.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/dashboard-nvim'

" Autocomplete with LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Nvim tree
Plug 'kyazdani42/nvim-tree.lua'

" Themes
Plug 'romainl/Apprentice'
Plug 'NLKNguyen/papercolor-theme'

Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-gitgutter'
Plug 'akinsho/toggleterm.nvim' 

" Powerline
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'arkav/lualine-lsp-progress'


call plug#end()
