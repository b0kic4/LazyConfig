require("telescope").setup({
  defaults = {
    layout_strategy = "flex",
    layout_config = {
      prompt_position = "top",
      horizontal = {
        preview_width = 0.7,
        width = 0.8,
        height = 0.8,
        mirror = false,
      },
      vertical = {
        width = 0.8,
        height = 0.9,
        preview_height = 0.5,
        mirror = false,
      },
      flex = {
        flip_columns = 120,
      },
    },
    sorting_strategy = "ascending",
    winblend = 15, -- Increase this value for more transparency
    border = true,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    prompt_prefix = " ",
    selection_caret = "➤ ",
    entry_prefix = "  ",
    initial_mode = "insert",
    path_display = { "truncate" },
  },
  pickers = {
    find_files = {
      theme = "ivy",
      find_command = { "rg", "--files", "--hidden", "--iglob", "!.git/*" },
      previewer = false,
      prompt_title = "🔍 Find Files",
    },
    live_grep = {
      theme = "dropdown",
      previewer = true,
      prompt_title = "🔍 Live Grep",
    },
    grep_string = {
      theme = "dropdown",
      previewer = true,
      prompt_title = "🔍 Grep String",
    },
  },
  extensions = {
    -- Configure extensions here
  },
})
