return {
  -- TODO: gotta add stuffff
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
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
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" }
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
		}
	},
}
