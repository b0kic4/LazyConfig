require("telescope").setup({
  defaults = {
    layout_strategy = "flex",
    layout_config = {
      prompt_position = "top",
      horizontal = {
        preview_width = 0.6,
        width = 0.9, -- Slightly larger width to utilize more screen space
        height = 0.8,
        mirror = false,
      },
      vertical = {
        width = 0.9,
        height = 0.95,
        preview_height = 0.4,
        mirror = false,
      },
      flex = {
        flip_columns = 120, -- Flip to horizontal after this width
      },
    },
    sorting_strategy = "ascending",
    winblend = 10, -- Moderate transparency for a modern look
    border = true, -- Enable border but make it minimalistic
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true, -- Enable 'less' for dynamic preview scrolling
    prompt_prefix = "  ", -- Aesthetic and clear prompt icon
    selection_caret = "  ", -- Visible and aesthetic caret
    entry_prefix = "  ",
    initial_mode = "insert",
    path_display = { "smart" }, -- Smart path truncation for clarity
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      find_command = { "rg", "--files", "--hidden", "--iglob", "!.git/*" }, -- Efficient file finding with ripgrep
      previewer = true, -- Enable preview to see file contents
      prompt_title = " Find Files", -- Aesthetic title with an icon
    },
    live_grep = {
      theme = "dropdown",
      previewer = true, -- Enable preview for live grep results
      prompt_title = " Live Grep", -- Aesthetic title with an icon
    },
    grep_string = {
      theme = "dropdown",
      previewer = true,
      prompt_title = " Grep String", -- Aesthetic title with an icon
    },
  },
  extensions = {
    -- If you use any extensions, configure them here
  },
})
