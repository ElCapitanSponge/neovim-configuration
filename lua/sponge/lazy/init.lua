return {
    "nvim-lua/plenary.nvim",
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = true,
            })
        end
    },
    "theprimeagen/vim-with-me"
}
