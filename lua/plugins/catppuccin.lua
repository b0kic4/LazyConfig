return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      -- You can add more configuration options here
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
