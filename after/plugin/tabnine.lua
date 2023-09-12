local tabnine = require("tabnine")
local tabnineStatus = require("tabnine.status")
local tabnineChat = require("tabnine.chat")

tabnine.setup({
    disable_auto_comment=true,
    accept_keymap="<Tab>",
    dismiss_keymap = "<C-]>",
    debounce_ms = 800,
    suggestion_color = {gui = "#808080", cterm = 244},
    exclude_filetypes = {"TelescopePrompt"},
    log_file_path = nil, -- absolute path to Tabnine log file
})

tabnineStatus.status()

tabnineChat.setup()

vim.keymap.set("n", '<leader>tc', '', {
    noremap = true,
    callback = tabnineChat.open,
    desc = "[t]abnine [c]hat"
})
vim.keymap.set("i", '<leader>tc', '', {
    noremap = true,
    callback = tabnineChat.open,
    desc = "[t]abnine [c]hat"
})
vim.keymap.set("x", '<leader>tc', '', {
    noremap = true,
    callback = tabnineChat.open,
    desc = "[t]abnine [c]hat"
})

