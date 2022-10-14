--------------------
-- Utils function --
--------------------

local M = {}

M.find_files = function(opts)
  local find_command = (function()
    if opts.find_command then
      return opts.find_command
    elseif 1 == vim.fn.executable "rg" then
      return { "rg", "--files", "--color", "never" }
    elseif 1 == vim.fn.executable "fd" then
      return { "fd", "--type", "f", "--color", "never" }
    elseif 1 == vim.fn.executable "fdfind" then
      return { "fdfind", "--type", "f", "--color", "never" }
    elseif 1 == vim.fn.executable "find" and vim.fn.has "win32" == 0 then
      return { "find", ".", "-type", "f" }
    end
  end)()

  local command = find_command[1]

  if command == "fd" or command == "fdfind" then
    table.insert(find_command, "--exclude")
    table.insert(find_command, ".git")
  elseif command == "rg" then
    table.insert(find_command, "--glob")
    table.insert(find_command, "!.git")
  elseif command == "find" then
    table.insert(find_command, "-o")
    table.insert(find_command, "-type")
    table.insert(find_command, "d")
    table.insert(find_command, "-name")
    table.insert(find_command, ".git")
    table.insert(find_command, "-prune")
    table.insert(find_command, "-false")
  end
  opts.find_command = find_command
  require('telescope.builtin').find_files(opts)
end

return M
