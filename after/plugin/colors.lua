-- NOTE: Color scheme configurations
require('tokyonight').setup({
    transparent = true
})

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
