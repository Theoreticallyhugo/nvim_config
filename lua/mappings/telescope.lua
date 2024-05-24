-- HELPERS

---Wrapps the given string in a table 
local function desc(s)
  return { desc = s }
end

local map = vim.keymap.set

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
