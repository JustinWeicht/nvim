return {
    -- Color theme
    { "rose-pine/neovim", name = "rose-pine" },

    -- Statusbar theme
    { 'vim-airline/vim-airline' },
    { 
        'vim-airline/vim-airline-themes',
        config = function()
            vim.g.airline_theme = 'deus'
        end
    },

    -- Telescope for fuzzy finding
    { 
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Treesitter for improved syntax highlighting
    { 
        'nvim-treesitter/nvim-treesitter', 
        build = ':TSUpdate' 
    },
    { 'nvim-treesitter/playground' },

    -- Additional useful plugins
    { 'ThePrimeagen/harpoon' },
    { 'ThePrimeagen/vim-be-good' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    
    -- LSP and Autocompletion
    { 
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- Uncomment the two plugins below if you want to manage the language servers from Neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    },

    -- GitHub Copilot integration
    { 'github/copilot.vim',
        lazy = false,
    },

}
