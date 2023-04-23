return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  opts = function()
    return {
      color_devicons = true,
      live_update = true,
      highlight = {
        ui = "String",
        search = "diffRemoved",
        replace = "diffAdded",
      },
      replace_engine = {
        ["sed"] = {
          cmd = function()
            -- MacOS idiocy hack
            if vim.fn.executable("gsed") == 1 then
              return "gsed"
            else
              return "sed"
            end
          end,
          args = nil,
        },
        options = {
          ["ignore-case"] = {
            value = "--ignore-case",
            icon = "[I]",
            desc = "ignore case",
          },
        },
      },
    }
  end,
}
