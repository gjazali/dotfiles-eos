call plug#begin('~/.vim/plugged')

" Dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Autocomplete and LSP
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'kdheepak/cmp-latex-symbols', {'for': 'tex'}
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'folke/trouble.nvim'
Plug 'mfussenegger/nvim-jdtls'

" Debugging
Plug 'puremourning/vimspector', {'on': []}
Plug 'cpiger/NeoDebug', {'on': []}

" Navigation
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
Plug 'nvim-neo-tree/neo-tree.nvim'
"Plug 'ggandor/lightspeed.nvim'
Plug 'ggandor/leap.nvim'
Plug 'alexghergh/nvim-tmux-navigation'
Plug 'akinsho/bufferline.nvim'

" Status
Plug 'nvim-lualine/lualine.nvim'
Plug 'j-hui/fidget.nvim'

" Editing
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'cohama/lexima.vim'
Plug 'windwp/nvim-ts-autotag'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-easy-align'
Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}

" Version control
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'

" TeX
Plug 'lervag/vimtex'

call plug#end()
