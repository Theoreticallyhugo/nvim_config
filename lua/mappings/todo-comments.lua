-- HELPERS

---Wrapps the given string in a table 
local function desc(s)
  return { desc = s }
end

local map = vim.keymap.set

--- todo comments
map(
  "n",
  "<leader>tn",
  function()
    require("todo-comments").jump_next()
  end,
  desc "TODO-COMMENTS: Next todo-type comment"
)
map(
  "n",
  "<leader>tp",
  function()
    require("todo-comments").jump_prev()
  end,
  desc "TODO-COMMENTS: Previous todo-type comment"

)
-- You can also specify a list of valid jump keywords
map(
  "n",
  "<leader>te",
  function()
    require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
  end,
  desc "TODO-COMMENTS: Next error/warning comment"
)

map(
  "n",
  "<leader>tf",
  function()
    require("todo-comments").jump_next({keywords = { "FIXME" }})
  end,
  desc "TODO-COMMENTS: Next fixme comment"
)

map(
  "n",
  "<leader>tt",
  function()
    require("todo-comments").jump_next({keywords = { "TODO" }})
  end,
  desc "TODO-COMMENTS: Next todo comment"
)

map(
  "n",
  "<leader>tj",
  "<cmd> TodoTelescope <CR>",
  desc "TODO-COMMENTS: Next todo comment"
)

