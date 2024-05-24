-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local highlights = require "configs.highlights"

local startscreen = require "configs.startscreen"

M.ui = {
	theme = "catppuccin",

	hl_override = highlights.override,
	hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
    header = startscreen,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      -- { "  Bookmarks", "Spc m a", "Telescope marks" },
      -- { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  }
}

return M
