--, require("nvim-tree").setup()

vim.keymap.set({"n", "v"}, "<leader>tt", function()
    vim.cmd("NvimTreeToggle")
end)

vim.keymap.set({"n", "v"}, "<leader>tf", function()
    vim.cmd("NvimTreeFocus")
end)

vim.keymap.set("n", "<leader>tff", function()
    vim.cmd("NvimTreeFindFile")
end)

vim.keymap.set({"n", "v"}, "<leader>tc", function()
    vim.cmd("NvimTreeCollapse")
end)
