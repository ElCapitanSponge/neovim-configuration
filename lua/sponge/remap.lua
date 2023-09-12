-- TODO: with the primeagen video and see what some of these bindings are for
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Exit the file" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move 1/2 down the page and center on cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move 1/2 up the page and center on the cursor" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end, { desc = "start [v]im [w]ith [m]e" })
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end, { desc = "[s]top [v]im [w]ith [m]e" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "[y]ank the selection, but NOT into the buffer" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank the line, but NOT into the buffer" })

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "[d]elete word/selection into the black hole" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "remap for escape" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable `Q`" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP to [f]ormat the buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[s]earch buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod  e[x]ecutable add" })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/AppData/Local/nvim/lua/sponge/packer.lua<CR>", { desc = "Edit the packer extensions file" });

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Stage changes" })

vim.keymap.set("n", "<leader>ww", function()
    vim.cmd("set wrap!")
end, { desc = "[w]ord [w]rap toggle" })

vim.keymap.set("n", "<leader>vs", vim.cmd.vs, { desc = "[v]erticle [s]plit" })
vim.keymap.set("n", "<leader>sp", vim.cmd.sp, { desc = "horizontal [sp]lit" })
