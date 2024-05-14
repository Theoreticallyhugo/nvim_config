return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = { "BufEnter" },
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require "configs.todo-comments",
    -- https://github.com/folke/todo-comments.nvim
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvimtree",
  },
  {
    url = "https://github.com/MaggieLostKeys/nvim-ccutil.git",
    event = "BufEnter",
    opts = {
      default_width = "100", -- default: 80
      type_overrides = {
        python = "80",
        markdown = "200",
        gitignore = "",
        text = "", -- no column in text files
      },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require "configs.copilot"
      -- require("copilot").setup({})
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = require("configs.nvim-dap-ui").config,
  },
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   ft= "python",
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --     "nvim-neotest/nvim-nio"
  --   },
  --   config = function(_, opts)
  --     local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  --     require("dap-python").setup(path)
  --     require("core.utils").load_mappings("dap_python")
  --   end
  -- },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 0
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = require("configs.rust-tools").opts,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
}
