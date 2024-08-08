require("telescope").setup({
  defaults = {
    layout_strategy = "flex",
    layout_config = {
      prompt_position = "top",
      horizontal = {
        preview_width = 0.65,
        width = 0.9,
        height = 0.8,
        mirror = false,
      },
    },
    sorting_strategy = "ascending",
  },
})
