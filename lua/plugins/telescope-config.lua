-- my_telescope_config.lua
require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      prompt_position = "bottom",
      horizontal = {
        preview_width = 0.6,
        width = 0.8,
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    sorting_strategy = "descending",
    winblend = 20, -- Transparency setting
    border = false, -- Disable border
    borderchars = { " ", " ", " ", " ", " ", " ", " ", " " }, -- Make borderchars blank
    color_devicons = true,
    use_less = false,
  },
})

-- Keymapping for Telescope
vim.api.nvim_set_keymap(
  "n",
  "<leader>fp",
  "<cmd>lua require('telescope.builtin').find_files()<CR>",
  { noremap = true, silent = true }
)
