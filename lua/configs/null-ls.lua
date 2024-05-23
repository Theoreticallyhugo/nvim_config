-- now uses none-ls
local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    -- Python
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.completion.spell,
  },
}
