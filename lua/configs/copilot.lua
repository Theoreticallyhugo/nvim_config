require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "TT"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = "<C-L>",
      accept_word = false,
      accept_line = false,
      next = "<C-J>",
      prev = "<C-K>",
      dismiss = "<C-H>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 18.x
  server_opts_overrides = {},
})
-- require("copilot.panel").accept()
-- require("copilot.panel").jump_next()
-- require("copilot.panel").jump_prev()
-- require("copilot.panel").open({position, ratio})
-- require("copilot.panel").refresh()
