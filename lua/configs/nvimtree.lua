local tree = {
  view = {
    adaptive_size = false,
    side = "left",
    width = 36,
    preserve_window_proportions = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false,
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "icon",

    indent_markers = {
      enable = true,
    },

    icons = {
      git_placement = "after",
      modified_placement = "before",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "󰉋",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "!",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = {}
  },
}

return tree
