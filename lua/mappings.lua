require "nvchad.mappings"

-- add yours here
---Wrapps the given string in a table 
local function desc(s)
  return { desc = s }
end

local map = vim.keymap.set

map("n", ";", ":", desc "CMD enter command mode" )
map("i", "jk", "<ESC>", desc "superior escape")
map("n", "QQ", ":qa <CR>", desc "quit all if there are no unsaved changes")
map("n", "W!", ":w !sudo tee % <CR>", desc "save file as sudo when write protected")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <CR>", desc "save file")
-- insertion
map("n", "<C-J>", "o<ESC>k")
map("n", "<C-K>", "O<ESC>j")
-- navigation
map({"n", "v"}, "j", "gj")
map({"n", "v"}, "k", "gk")
-- updating
map("n", "<leader>ua", ":Lazy sync <CR>", desc "update all plugins" )
map("n", "<leader>um", ":MasonInstallAll <CR>", desc "update all mason plugins" )
-- formatting    
map({ "n", "v" }, "<leader>mp", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 2000,
      })
    end,  desc "Format file or range (in visual mode)"
)

--- LazyGit
map("n", "<leader>gg", "<cmd> LazyGit <CR>", desc "Open LazyGit")

--- nvim tree
-- use g? to show all default mappings, custom ones excluded
-- refer to https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
-- point 2.2 QUICKSTART: HELP at line 149 for the commands
map(
  "n",
  "_",
  function ()
    require("nvim-tree.api").tree.change_root_to_node() -- replacing <C-]>
  end,
  desc "CD: change directory"
)


--- telescope
map(
  "n",
  "<leader>fs",
  function()
    require("telescope.builtin").lsp_document_symbols()
  end,
  desc "Find document symbols"
)
map(
  "n",
  "<leader>fS",
  function()
    require("telescope.builtin").lsp_workspace_symbols()
  end,
  desc "Find workspace symbols"
)
map(
  "n",
  "<leader>fi",
  function()
    require("telescope.builtin").lsp_implementations()
  end,
  desc "List implementations"
)
map(
  "n",
  "<leader>fd",
  function()
    require("telescope.builtin").lsp_definitions()
  end,
  desc "List definition"
)
map(
  "n",
  "<leader>fq",
  function()
    require("telescope.builtin").quickfix()
  end,
  desc "List quickfixes"
)
map("n", "<leader>fz", "") -- remap from fz to fj
map("n", "<leader>fj", "<cmd> Telescope current_buffer_fuzzy_find <CR>", desc "Find in current buffer")


--- Dap
--
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc "Breakpoint at current line" )
map("n", "<leader>dr", "<cmd> DapContinue <CR>", desc "Start / continue debugger" )

-- dap python 
map(
  "n",
  "<leader>dpr",
  function ()
    require("dap-python").set_method()
  end,
  desc "Run Python tests"
)


--- todo comments
map(
  "n",
  "<leader>tn",
  function()
    require("todo-comments").jump_next()
  end,
  desc "Next todo-type comment"
)
map(
  "n",
  "<leader>tp",
  function()
    require("todo-comments").jump_prev()
  end,
  desc "Previous todo-type comment"

)
-- You can also specify a list of valid jump keywords
map(
  "n",
  "<leader>te",
  function()
    require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
  end,
  desc "Next error/warning comment"
)

map(
  "n",
  "<leader>tf",
  function()
    require("todo-comments").jump_next({keywords = { "FIXME" }})
  end,
  desc "Next fixme comment"
)

map(
  "n",
  "<leader>tt",
  function()
    require("todo-comments").jump_next({keywords = { "TODO" }})
  end,
  desc "Next todo comment"
)

map(
  "n",
  "<leader>tj",
  "<cmd> TodoTelescope <CR>",
  desc "Next todo comment"
)

