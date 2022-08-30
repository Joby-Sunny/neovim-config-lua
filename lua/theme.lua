return function(package)
  package.setup({
    options = {
      transparent = false, -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = false, -- Non focused panes set to alternative background
      styles = { -- Style to be applied to different syntax groups
        comments = "italic", -- Value is any valid attr-list value `:help attr-list`
        conditionals = "NONE",
        constants = "bold",
        functions = "NONE",
        keywords = "bold",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "italic,bold",
        variables = "NONE",
      },
    }
  })
end
