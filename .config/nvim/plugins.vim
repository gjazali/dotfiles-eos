call plug#begin('~/.vim/plugged')

Plug 'lewis6991/impatient.nvim'
"Plug 'nathom/filetype.nvim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'kdheepak/cmp-latex-symbols'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'folke/trouble.nvim'
Plug 'mfussenegger/nvim-jdtls'

Plug 'puremourning/vimspector', {'on': []}
Plug 'cpiger/NeoDebug', {'on': []}

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'alexghergh/nvim-tmux-navigation'

Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'j-hui/fidget.nvim'
Plug 'MunifTanjim/nui.nvim'

Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}

Plug 'lervag/vimtex'

call plug#end()
