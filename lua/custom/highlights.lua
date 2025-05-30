-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  -- NvimTreeNormal = { bg = "#141b1e" },
  -- NvimTreeNormalNC = { bg = "#141b1e" },
  -- NvimTreeWinSeparator = { bg = "#141b1e", fg = "#141b1e" },
  -- WinSeparator = { bg = "#141b1e" },
  -- NavicSeparator = { bg = "#ffffff" },
  -- BufferLineSeparator = { bg = "#141b1e" },
  -- WhichKeySeparator = { bg = "#141b1e" },
  -- BufferLineSeparatorVisible = { bg = "#141b1e" },
  -- BufferLineSeparatorSelected = { bg = "#141b1e" },
  -- -- LineNr = { bg = "#141b1e" },
  -- NvimTreeOpenedFolderName = { bg = "#141b1e" },
  -- DapUILineNumber = { bg = "#141b1e" },
  -- BufferLineBackground = { bg = "#141b1e" },
  --
  Comment = {
    italic = true,
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
