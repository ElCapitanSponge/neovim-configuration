-- NOTE: Color scheme configurations
require('rose-pine').setup({
    disable_background = true
})

require('caret').setup()

require('tokyonight').setup({
    transparent = true
})

-- INFO: Variables for tracking theme and color schemes
SelectedColorIndex = 1
ScemeCollectionSize = 3
SchemeCollection = {
    'tokyonight',
    'rose-pine',
    'caret',
}
TransBackground = true

-- INFO: Color my theme
function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)
    if TransBackground then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    else
        vim.cmd("set background=dark")
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
