return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      sections = {
        lualine_a = {
          {
            function()
              local mode_map = {
                ["n"] = " NORMAL", -- Vim icon + NORMAL mode
                ["i"] = " INSERT", -- Vim icon + INSERT mode
                ["v"] = " VISUAL", -- Vim icon + VISUAL mode
                ["V"] = " V-LINE", -- Vim icon + VISUAL LINE mode
                ["\22"] = " V-BLOCK", -- Vim icon + VISUAL BLOCK mode (Ctrl+V)
                ["c"] = " COMMAND", -- Vim icon + COMMAND mode
                ["R"] = " REPLACE", -- Vim icon + REPLACE mode
              }
              return mode_map[vim.api.nvim_get_mode().mode] or " NORMAL"
            end,
            color = function()
              local mode_color = {
                n = { fg = "#1E1E1E", bg = "#3A81C3", gui = "bold" }, -- Blue background for NORMAL, dark text
                i = { fg = "#1E1E1E", bg = "#E06C75", gui = "bold" }, -- Red background for INSERT, dark text
                v = { fg = "#1E1E1E", bg = "#98C379", gui = "bold" }, -- Vibrant green for VISUAL, dark text
                V = { fg = "#1E1E1E", bg = "#98C379", gui = "bold" }, -- Same for V-LINE
                ["\22"] = { fg = "#1E1E1E", bg = "#98C379", gui = "bold" }, -- Same for V-BLOCK
                c = { fg = "#1E1E1E", bg = "#D19A66", gui = "bold" }, -- Command mode with custom color
                R = { fg = "#1E1E1E", bg = "#E5C07B", gui = "bold" }, -- Replace mode with custom color
              }
              return mode_color[vim.api.nvim_get_mode().mode] or { fg = "#1E1E1E", bg = "#3A81C3", gui = "bold" } -- Default to Normal mode if not found
            end,
            padding = { left = 1, right = 1 },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "", -- Git branch icon
            color = { fg = "#F7768E", gui = "bold" }, -- Color for branch
          },
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " }, -- Git diff icons
            color_added = "#A6E22E",
            color_modified = "#E5C07B",
            color_removed = "#F7768E",
          },
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " }, -- LSP diagnostics icons
          },
          {
            function()
              local recording_register = vim.fn.reg_recording()
              if recording_register ~= "" then
                return " REC @" .. recording_register -- Recording indicator with icon
              end
              return "" -- No recording
            end,
            color = { fg = "#FF0000", gui = "bold" }, -- Red color for recording indicator
          },
        },
        lualine_x = {
          { "encoding", color = { fg = "#E5C07B", gui = "bold" } }, -- File encoding
          {
            "fileformat",
            symbols = { unix = " LF", dos = " CRLF", mac = " CR" }, -- Line ending icons
            color = { fg = "#61AFEF", gui = "bold" },
          },
          { "filetype" }, -- File type
        },
        lualine_y = {
          {
            function()
              return os.date("%H:%M") -- Current time with clock icon
            end,
            color = { fg = "#E5C07B", gui = "bold" }, -- Customize colors as needed
          },
          {
            function()
              return " " .. os.date("%Y-%m-%d") -- Current date with calendar icon
            end,
            color = { fg = "#98C379", gui = "bold" }, -- Customize colors as needed
          },
        },
        lualine_z = {
          { "progress" }, -- File progress
          { "location" }, -- Line and column number
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "fugitive", "quickfix" }, -- Add git and quickfix extensions
    }
  end,
}
