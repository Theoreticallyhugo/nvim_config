local M = {}

local C = {
	rosewater = "#f5e0dc",
	flamingo = "#f2cdcd",
	pink = "#f5c2e7",
	mauve = "#cba6f7",
	red = "#f38ba8",
	maroon = "#eba0ac",
	peach = "#fab387",
	yellow = "#f9e2af",
	green = "#a6e3a1",
	teal = "#94e2d5",
	sky = "#89dceb",
	sapphire = "#74c7ec",
	blue = "#89b4fa",
	lavender = "#b4befe",
	text = "#cdd6f4",
	subtext1 = "#bac2de",
	subtext0 = "#a6adc8",
	overlay2 = "#9399b2",
	overlay1 = "#7f849c",
	overlay0 = "#6c7086",
	surface2 = "#585b70",
	surface1 = "#45475a",
	surface0 = "#313244",
	base = "#1e1e2e",
	mantle = "#181825",
	crust = "#11111b",
}

-- reference catppuccin/lua/catppuccin/groups/integrations/treesitter.lua
-- reference https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
M.override = {
  Search = {
    bg = C.red,
  },
  IncSearch = {
    bg = C.maroon,
  },
  Substitute = {
    bg = C.red,
  },
  -- general comment
  Comment = {
    italic = true,
    fg = "#747992",
  },
	["@comment"] = {
    italic = true,
    fg = "#747992",
  },
  -- gitcommitComment = {
  --   italic = true,
  --   fg = "#747992",
  -- },
  -- theoretically this is used for doc (""") in python, but it doesnt work?
  ["@text.literal"] = {
    fg = C.teal,
  },
  -- TODO: keyword in comments
  Todo = {
  fg = C.yellow,
  bg = C.base,
  },
  -- default group for FIXME, NOTE, and XXX
  ["@text"] = {
  fg = C.red,
  bg = C.base,
  },
  -- parameters of functions
  ["@parameter"] = {
    fg = C.sapphire,
  },
  -- self in python
  ["@variable.builtin"] = {
    fg = C.maroon,
  },
  -- members: a variable of a class
  ["@field"] = {
    fg = C.pink,
  },
  -- not entirely sure, but when a module is not recognised by pyright, its this
  ["@constant"] = {
    fg = C.rosewater,
  },
  -- standard error displayed in code
  DiagnosticError = {
    fg = C.red,
  },

  -- this is for testing
  -- ["@constant.macro"] = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Constant = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Identifier = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Statement = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- WarningMsg = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- ErrorMsg = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Exception = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Macro = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Character = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- SpecialChar = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- DiffDelete = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Delimiter = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- Debug = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },
  -- constant = {
  --   fg = "#0000ff",
  --   bg = "#ff0000",
  -- },

}

M.add = {
  -- for FIXME, NOTE, and XXX
  ["@text.note"] = {
  fg = C.yellow,
  bg = C.base,
  },
}

return M
