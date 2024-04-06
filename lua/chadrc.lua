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
  }
}

return M
