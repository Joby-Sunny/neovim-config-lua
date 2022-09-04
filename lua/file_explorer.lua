return function(package)
  package.setup(
    {
      sort_by = "name",
      disable_netrw = true,
      hijack_netrw = true,
      ignore_buffer_on_setup = false,
      open_on_setup = false,
      open_on_setup_file = false,
      open_on_tab = false,
      respect_buf_cwd = true,
      remove_keymaps = false,
      view = {
        adaptive_size = true,
        side = "left",
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
          custom_only = true,
          list = {
            { key = { "o" }, action = "edit" },
            { key = "<CR>", action = "edit_in_place" },
            { key = "O", action = "edit_no_picker" },
            { key = { "cd" }, action = "cd" },
            { key = "s", action = "vsplit" },
            { key = "i", action = "split" },
            { key = "t", action = "tabnew" },
            { key = "P", action = "parent_node" },
            { key = "x", action = "close_node" },
            { key = "gp", action = "preview" },
            { key = "I", action = "toggle_git_ignored" },
            { key = "H", action = "toggle_dotfiles" },
            { key = "U", action = "toggle_custom" },
            { key = "R", action = "refresh" },
            { key = "ma", action = "create" },
            { key = "md", action = "remove" },
            { key = "mD", action = "trash" },
            { key = "mm", action = "rename" },
            { key = "mx", action = "cut" },
            { key = "mc", action = "copy" },
            { key = "mp", action = "paste" },
            { key = "my", action = "copy_name" },
            { key = "mY", action = "copy_path" },
            { key = "gy", action = "copy_absolute_path" },
            { key = "[g", action = "prev_git_item" },
            { key = "]g", action = "next_git_item" },
            { key = "-", action = "dir_up" },
            { key = "f", action = "live_filter" },
            { key = "F", action = "clear_live_filter" },
            { key = "q", action = "close" },
            { key = "W", action = "collapse_all" },
            { key = "E", action = "expand_all" },
            { key = "S", action = "search_node" },
            { key = "<C-k>", action = "toggle_file_info" },
            { key = "?", action = "toggle_help" },
          }
        }
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
              arrow_closed = "",
              arrow_open = "",
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
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
        remove_file = {
          close_window = true,
        }
      }
    }
  )

  local VIM = require("utils")

  local setKeyMap = VIM.getSetKeyMap({ noremap = true, silent = true })
  local MODE = VIM.MODE

  setKeyMap(MODE.NORMAL, "<C-t>", ":NvimTreeToggle <CR>")
  setKeyMap(MODE.NORMAL, "<C-n>", ":NvimTreeFocus <CR>")
  -- setKeyMap(MODE.NORMAL, "<C-r>", ":NvimTreeRefresh <CR>")
end
