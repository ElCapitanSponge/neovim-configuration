vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"
    -- use('dense-analysis/ale')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ('nvim-telescope/telescope-project.nvim')
    use('folke/tokyonight.nvim')
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use ({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })
    use{
        "theprimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context")
    use("laytan/cloak.nvim")
    use("neovim/nvim-lspconfig")
    use("jose-elias-alvarez/null-ls.nvim")
    use("MunifTanjim/eslint.nvim")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip")
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    })
    use({
        "codota/tabnine-nvim",
        run = "pwsh.exe -file .\\dl_binaries.ps1"
    })
    use("wakatime/vim-wakatime")
    use("nvim-tree/nvim-web-devicons")
    use({
        'folke/todo-comments.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    })
    use ({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })
    use('lewis6991/gitsigns.nvim')
    use('theprimeagen/vim-with-me')
end)
