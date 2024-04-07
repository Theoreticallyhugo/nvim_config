local M = {}

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

M.opts = {
  server = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          enable = true,
          command = "clippy",
        }
      }
    }
  }
}

return M
