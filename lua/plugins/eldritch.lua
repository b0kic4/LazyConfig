return {
  "eldritch-theme/eldritch.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Setup color scheme with transparency
    require("eldritch").setup({
      transparent = true, -- Set this to true to enable transparency
      terminal_colors = false,
      -- You can add other configuration options here
    })

    -- Apply the color scheme
    vim.cmd([[colorscheme eldritch]])
  end,
}
