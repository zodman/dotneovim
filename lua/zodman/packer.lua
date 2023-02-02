-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- fuzzy
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-ui-select.nvim' }


    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )


    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use( 'moll/vim-bbye') -- " Bdelete


    use('sbdchd/neoformat')
    use('mattn/emmet-vim')
    use "terrortylor/nvim-comment"




    --
    -- themes
    --
    use( 'sainnhe/sonokai')
    use( 'tomasr/molokai')
    use( 'bluz71/vim-moonfly-colors')
    use( 'jonathanfilip/vim-lucius')
    use( 'joshdick/onedark.vim')
    use( 'sjl/badwolf')
    use( 'morhetz/gruvbox')
    use( 'srcery-colors/srcery-vim')
    use( 'lifepillar/vim-solarized8')
    use( 'glepnir/zephyr-nvim')
    use( 'sainnhe/everforest')
    use( 'NLKNguyen/papercolor-theme')
    use({ 'catppuccin/nvim',   as= 'catppuccin'} )
    use 'folke/tokyonight.nvim'

    --
    -- LSP
    --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'j-hui/fidget.nvim'
    use 'jose-elias-alvarez/typescript.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*"}


end)
