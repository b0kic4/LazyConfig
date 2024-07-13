return {
  "eldritch-theme/eldritch.nvim",
  config = function()
    -- Setup color scheme with transparency
    require("eldritch").setup({
      transparent = true, -- Set this to true to enable transparency
      terminal_colors = false,
      -- You can add other configuration options here
    })
  end,
}
