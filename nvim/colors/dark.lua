-- ~/.config/nvim/lua/colors/dark.lua

vim.cmd("highlight clear")
vim.cmd("set background=dark")
vim.cmd("syntax reset")


local c = {
  bg        = NONE,
  fg        = "#d3d3d3",
  black     = "#000000",
  red       = "#dd0000",
  green     = "#77dd44",
  yellow    = "#ffff55",
  blue      = "#2299aa",
  magenta   = "#ff55ff",
  cyan      = "#00ffff",
  white     = "#d3d3d3",
  bright_black = "#333333",
  accent    = "#00ff66",
}

-- General UI
vim.api.nvim_set_hl(0, "Normal",         { fg = c.fg, bg = c.bg })
vim.api.nvim_set_hl(0, "NormalNC",       { fg = c.fg, bg = c.bg })
vim.api.nvim_set_hl(0, "LineNr",         { fg = c.bright_black })
vim.api.nvim_set_hl(0, "CursorLineNr",   { fg = c.accent, bold = true })
vim.api.nvim_set_hl(0, "CursorLine",     { bg = "#151515" })
vim.api.nvim_set_hl(0, "Visual",         { bg = "#222222" })
vim.api.nvim_set_hl(0, "StatusLine",     { fg = c.fg, bg = "#202020" })
vim.api.nvim_set_hl(0, "StatusLineNC",   { fg = "#777777", bg = "#202020" })
vim.api.nvim_set_hl(0, "VertSplit",      { fg = "#202020" })
vim.api.nvim_set_hl(0, "Pmenu",          { fg = c.fg, bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "PmenuSel",       { fg = c.bg, bg = c.accent })

-- Syntax colors
vim.api.nvim_set_hl(0, "Comment",        { fg = "#666666", italic = true })
vim.api.nvim_set_hl(0, "String",         { fg = c.green })
vim.api.nvim_set_hl(0, "Keyword",        { fg = c.blue, bold = true })
vim.api.nvim_set_hl(0, "Function",       { fg = c.accent })
vim.api.nvim_set_hl(0, "Type",           { fg = c.cyan })
vim.api.nvim_set_hl(0, "Constant",       { fg = c.yellow })
vim.api.nvim_set_hl(0, "Identifier",     { fg = c.fg })
vim.api.nvim_set_hl(0, "Number",         { fg = c.magenta })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = c.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = c.blue })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = c.green })

