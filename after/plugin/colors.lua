-- NOTE: Color scheme configurations
require('rose-pine').setup({
    disable_background = false
})

require('caret').setup({
    -- disable_background = true
})

-- INFO: Variables for tracking theme and color schemes
SelectedColorIndex = 1
ScemeCollectionSize = 2
SchemeCollection = {
    'rose-pine',
    'caret'
}
TransBackground = true

-- INFO: Color my theme
function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    if TransBackground then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    else
        vim.api.nvim_set_hl(1, "Normal", {})
        vim.api.nvim_set_hl(1, "NormalFloat", {})
    end
end

-- INFO: Initialise defalt scheme
ColorMyPencils()

vim.keymap.set('n', '<leader>cs', function()
    SelectedColorIndex = SelectedColorIndex + 1
    if SelectedColorIndex > ScemeCollectionSize then
        SelectedColorIndex = 1
    end
    ColorMyPencils(SchemeCollection[SelectedColorIndex])
end, { desc = "[c]hange color[s]cheme" })

vim.keymap.set('n', '<leader>cb', function()
    TransBackground = not TransBackground
    ColorMyPencils(SchemeCollection[SelectedColorIndex])
end, { desc = "[c]hange [b]ackground transparency" })
