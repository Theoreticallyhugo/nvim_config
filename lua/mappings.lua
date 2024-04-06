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
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <CR>")
map("n", "<leader>u", ":Lazy sync <CR>", desc "update all plugins" )

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
