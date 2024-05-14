local options = {
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    lua = { "stylua" },
    python = { "isort", "black" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    async = false,
    lsp_fallback = true,
  },
}

require("conform").formatters.black = {
  prepend_args = { "-l", "79" },
  -- The base args are { "-filename", "$FILENAME" } so the final args will be
  -- { "-i", "2", "-filename", "$FILENAME" }
}

require("conform").setup(options)
