return {
    {
        "theprimeagen/vim-with-me",
        config = function()
            vim.keymap.set("n", "<leader>vwm", function()
                require("vim-with-me").StartVimWithMe()
            end, { desc = "start [v]im [w]ith [m]e" })
            vim.keymap.set("n", "<leader>svwm", function()
                require("vim-with-me").StopVimWithMe()
            end, { desc = "[s]top [v]im [w]ith [m]e" })
        end
    }
}
