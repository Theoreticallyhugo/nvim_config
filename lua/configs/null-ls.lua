-- now uses none-ls
local M = {}

local null_ls = require "null-ls"

M.sources = {
  -- null_ls.builtins.formatting.rustfm,
  -- Python
  null_ls.builtins.diagnostics.mypy,
  -- null_ls.builtins.diagnostics.ruff,
  null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.black.with({
    extra_args = { "--line-length=79" }
  }),

}

return M
