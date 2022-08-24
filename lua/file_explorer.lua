return function(package)
  package.setup(
    {
      sort_by = "name",
      disable_netrw = true,
      hijack_netrw = true,
      open_on_tab = false,
      respect_buf_cwd = true,
      view = {
        adaptive_size = true,
        side = "left",
        number = true,
        relativenumber = true,
        signcolumn = "yes"
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = true,
        full_name = true,
        highlight_opened_files = "icon",
        icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = ""
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌"
            }
          }
        }
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50
      },
      git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400
      }
    }
  )

  local VIM = require("utils")

  local setKeyMap = VIM.getSetKeyMap({ noremap = true, silent = true })
  local MODE = VIM.MODE

  setKeyMap(MODE.NORMAL, "<C-t>", ":NvimTreeToggle <CR>")
  setKeyMap(MODE.NORMAL, "<C-n>", ":NvimTreeFocus <CR>")
  setKeyMap(MODE.NORMAL, "<C-r>", ":NvimTreeRefresh <CR>")
end
