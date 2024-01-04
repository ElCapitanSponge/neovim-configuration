return {
    {
        "wakatime/vim-wakatime",
        config = function()
            vim.keymap.set("n", "<leader>wtt", function()
                vim.cmd("WakaTimeToday")
            end, { desc = "[w]aka [t]ime [t]oday" })
        end
    }
}
