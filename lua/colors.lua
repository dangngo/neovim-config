-----------------------------------------------------------
-- Colors and themes
----------------------------------------------------------

-- local colorscheme = "catppuccin"
local colorscheme = "nightfox"

local status_ok, _ = pcall(require, "plugins." .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " doesn't have a setup file!")
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
