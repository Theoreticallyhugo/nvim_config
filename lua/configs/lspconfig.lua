local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

--NOTE: DO NOT ADD THE RUST LSP IN HERE. it is added by rust-tools

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "pyright",
  "clangd",
  "texlab",
  "dockerls",
  "jsonls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.grammarly.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "tex", "plaintex", "txt", "markdown" },
}

-- bash-language-server
lspconfig.bashls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "sh", "bash", "zsh" },
}
