---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
  statusline = {
    theme = "minimal",
  },
  ident = {
    enable = true,
  },
  nvdash = {
    load_on_startup = false,
  },
  cmp = {
    style = "atom",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
