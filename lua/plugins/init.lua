return {
    -- Color theme
    { "rose-pine/neovim", name = "rose-pine",
        lazy = false,
    },

    -- Statusbar theme
    { 'vim-airline/vim-airline',
        lazy = false,
    },
    {
        'vim-airline/vim-airline-themes',
        lazy = false,
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

    { 'HallerPatrick/py_lsp.nvim' },

    -- Diagnostic
    { 'folke/lsp-colors.nvim',
        lazy = false,
    },
    {
        "folke/trouble.nvim",
        lazy = false,
        config = function()
            require("trouble").setup({
                icons = false,
            })
        end,
        opts = {}, -- for default options, refer to the configuration section for custom setup.
    },

    -- Refactoring
    {
        "ThePrimeagen/refactoring.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("refactoring").setup()
        end,
    },

    -- GitHub Copilot
    { 'github/copilot.vim',
        lazy = false,
    },

    -- Copilot Chat
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
            { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
        opts = {
            debug = true, -- Enable debugging
            -- See Configuration section for rest
        },
        -- See Commands section for default commands if you want to lazy load on them
    },

    -- Additional useful plugins
    { 'ThePrimeagen/harpoon' },
    { 'ThePrimeagen/vim-be-good' },
    { 'tpope/vim-fugitive' },
    { 'mbbill/undotree',
        lazy = false,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
}

