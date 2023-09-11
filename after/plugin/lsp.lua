local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, { desc = '[g]oto [r]eferences' })
vim.keymap.set('n', '<leader>gt', require('telescope.builtin').lsp_implementations, { desc = '[g]o[t]o Implementation' })
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { desc = 'Type [D]efinition' })
vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = '[d]ocument [s]ymbols' })
vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = '[w]orkspace [s]ymbols' })
