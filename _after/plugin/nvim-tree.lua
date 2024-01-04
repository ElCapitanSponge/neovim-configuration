--, require("nvim-tree").setup()

vim.keymap.set({"n", "v"}, "<leader>tt", function()
    vim.cmd("NvimTreeToggle")
end, { desc = "Nvim [t]ree [t]oggle" })

vim.keymap.set({"n", "v"}, "<leader>tf", function()
    vim.cmd("NvimTreeFocus")
end, { desc = "Nvim [t]ree [f]ocus" })

vim.keymap.set("n", "<leader>tff", function()
    vim.cmd("NvimTreeFindFile")
end, { desc = "Nvim [t]ree [f]ind [f]ile" })

vim.keymap.set({"n", "v"}, "<leader>tc", function()
    vim.cmd("NvimTreeCollapse")
end, { desc = "Nvim [t]ree [c]ollapse" })
