call plug#begin('~/.vim/plugged')

" Dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Performance
Plug 'dstein64/vim-startuptime'

" Parsing and Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocomplete and LSP
Plug 'neovim/nvim-lspconfig'
Plug 'folke/trouble.nvim'
Plug 'L3MON4D3/LuaSnip'             " Snippet engine
"Plug 'rafamadriz/friendly-snippets' " Snippet collection
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'

" Language-specific Extensions
"Plug 'mfussenegger/nvim-jdtls'
Plug 'lervag/vimtex'
"Plug 'kdheepak/cmp-latex-symbols'
Plug 'martineausimon/nvim-lilypond-suite'

" Navigation
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
"Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'ggandor/leap.nvim'
Plug 'alexghergh/nvim-tmux-navigation'
Plug 'akinsho/bufferline.nvim'

" Status
Plug 'nvim-lualine/lualine.nvim'

" Editing
"Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'cohama/lexima.vim'
"Plug 'windwp/nvim-ts-autotag'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-easy-align'
Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}

" Version control
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()
