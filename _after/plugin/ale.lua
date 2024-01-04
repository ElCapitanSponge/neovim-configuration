--[[
vim.keymap.set("n", "<leader>ae", function()
    vim.cmd("ALEEnable")
end, { desc = "[a]le [e]nable" })


vim.keymap.set("n", "<leader>ad", function()
    vim.cmd("ALEDisable")
end, { desc = "[a]le [d]isable" })
]]--
