-- ~/.config/nvim/lua/config/colors.lua

-- Setup tokyonight with transparency
require("tokyonight").setup({
  transparent = true,
})

-- Apply the colorscheme
vim.cmd.colorscheme("tokyonight")

-- Override highlight groups to force transparency
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local hl = vim.api.nvim_set_hl
    hl(0, "Normal", { bg = "none" })
    hl(0, "NormalNC", { bg = "none" })
    hl(0, "SignColumn", { bg = "none" })
    hl(0, "VertSplit", { bg = "none" })
    hl(0, "LineNr", { bg = "none" })
    hl(0, "NonText", { bg = "none" })
  end,
})
