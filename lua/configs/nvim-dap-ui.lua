local M = {}

-- DAP UI changes the width of nvim tree and pushes the sidebar into the content
-- area. Storing and restoring the state of nvim tree either hides it while
-- the debug ui is open, or explicitly requires you to reopen the tree. This
-- will display the tree in its proper location.
local tree_api = require "nvim-tree.api"
local tree_was_closed = false

local opts = {
  icons = {
    collapsed = "",
    current_frame = "",
    expanded = "",
  },
  layouts = {
    {
      elements = {
        {
          id = "scopes",
          size = 0.33,
        },
        {
          id = "stacks",
          size = 0.32,
        },
        {
          id = "watches",
          size = 0.17,
        },
        {
          id = "breakpoints",
          size = 0.18,
        },
      },
      position = "left",
      size = 50,
    },
    {
      elements = {
        {
          id = "repl",
          size = 0.4,
        },
        {
          id = "console",
          size = 0.6,
        },
      },
      position = "bottom",
      size = 10,
    },
  },
}

local function store_tree()
  vim.cmd "NvimTreeToggle"
  vim.cmd "NvimTreeToggle"

  tree_was_closed = tree_api.tree.is_visible()
  if tree_was_closed then
    require("nvim-tree.api").tree.close()
  end
end

local function restore_tree()
  if tree_was_closed then
    require("nvim-tree.api").tree.open()
  end
end

M.config = function()
  local dap = require "dap"
  local dapui = require "dapui"

  dapui.setup(opts)

  dap.listeners.after.event_initialized["dapui_config"] = function()
    store_tree()
    dapui.open()
  end

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    restore_tree()
  end

  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    restore_tree()
  end
end

return M
