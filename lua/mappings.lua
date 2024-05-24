require "nvchad.mappings"
-- reference https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua

-- add yours here
---Wrapps the given string in a table 
local function desc(s)
  return { desc = s }
end

local map = vim.keymap.set

map("n", ";", ":", desc "CMD: enter command mode" )
map("i", "jk", "<ESC>", desc "ESC: superior escape")
map("n", "QQ", ":qa <CR>", desc "QUIT: quit all if there are no unsaved changes")
map("n", "W!", ":w !sudo tee % <CR>", desc "SAVE: save file as sudo when write protected")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <CR>", desc "SAVE: save file")
-- insertion
map("n", "<C-J>", "o<ESC>k", desc "INSERT: empty line below")
map("n", "<C-K>", "O<ESC>j", desc "INSERT: empty line above")
-- navigation
map({"n", "v"}, "j", "gj", desc "NAVIGATION: go down one visual line")
map({"n", "v"}, "k", "gk", desc "NAVIGATION: go up one visual line")
-- updating
map("n", "<leader>ua", ":Lazy sync <CR>", desc "UPDATE: update all plugins" )
map("n", "<leader>um", ":MasonInstallAll <CR>", desc "UPDATE: update all mason plugins" )
-- formatting    
-- overrides NvChad default
map({ "n", "v" }, "<leader>fm", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 2000,
      })
    end,  desc "FORMAT: Format file or range (in visual mode)"
)

--- LazyGit
map("n", "<leader>gg", "<cmd> LazyGit <CR>", desc "LAZYGIT: Open LazyGit")

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
  desc "Nvim-tree: cd change directory"
)
map("n", "<C-]>", "")


--- telescope
map(
  "n",
  "<leader>fs",
  function()
    require("telescope.builtin").lsp_document_symbols()
  end,
  desc "TELESCOPE: Find document symbols"
)
map(
  "n",
  "<leader>fS",
  function()
    require("telescope.builtin").lsp_workspace_symbols()
  end,
  desc "TELESCOPE: Find workspace symbols"
)
map(
  "n",
  "<leader>fi",
  function()
    require("telescope.builtin").lsp_implementations()
  end,
  desc "TELESCOPE: List implementations"
)
map(
  "n",
  "<leader>fd",
  function()
    require("telescope.builtin").lsp_definitions()
  end,
  desc "TELESCOPE: List definition"
)
map(
  "n",
  "<leader>fq",
  function()
    require("telescope.builtin").quickfix()
  end,
  desc "TELESCOPE: List quickfixes"
)
map("n", "<leader>fz", "") -- remap from fz to fj
map("n", "<leader>fj", "<cmd> Telescope current_buffer_fuzzy_find <CR>", desc "TELESCOPE: Find in current buffer")

map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "TELESCOPE: live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "TELESCOPE: find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "TELESCOPE: help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "TELESCOPE: find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "TELESCOPE: find oldfiles" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "TELESCOPE: git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "TELESCOPE: git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "TELESCOPE: pick hidden term" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "TELESCOPE: nvchad themes" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "TELESCOPE: find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "TELESCOPE: find all files" }
)

--- Dap
--
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc "DAP: Breakpoint at current line" )
map("n", "<leader>dr", "<cmd> DapContinue <CR>", desc "DAP: Start / continue debugger" )

-- dap python 
map(
  "n",
  "<leader>dpr",
  function ()
    require("dap-python").set_method()
  end,
  desc "DAP: Run Python tests"
)


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

