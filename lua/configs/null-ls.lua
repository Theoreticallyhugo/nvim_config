-- now uses none-ls
local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    -- null_ls.builtins.formatting.rustfm,
    -- Python
    null_ls.builtins.diagnostics.mypy,
    -- null_ls.builtins.diagnostics.ruff,
    -- null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
  },
}
