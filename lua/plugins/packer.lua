--------------------
-- Plugin manager --
--------------------

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- TODO: fix this
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- PLUGINS --
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Libraries
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- Core
  use "kyazdani42/nvim-tree.lua" -- File explorer
  use "nvim-telescope/telescope.nvim" -- Fuzzy finder
  use "ahmedkhalf/project.nvim" -- Project management

  -- Terminal
  use "akinsho/toggleterm.nvim"

  -- Autocompletion
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "hrsh7th/cmp-nvim-lsp" -- Nvim config completions
  use "saadparwaiz1/cmp_luasnip" -- Lua snippet completions

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- Install LSP server
  use "tamago324/nlsp-settings.nvim" -- LSP settings defined in JSON
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Syntax highlighter
  use {
    "nvim-treesitter/nvim-treesitter",
    -- run = ":TSUpdate",
  }

  -- UI
  use "kyazdani42/nvim-web-devicons" -- Icons
  use "akinsho/bufferline.nvim" -- Tabline
  use "nvim-lualine/lualine.nvim" -- Statusline

  -- Misc
  use "windwp/nvim-autopairs" -- Autopairs
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "JoosepAlviste/nvim-ts-context-commentstring" -- Context aware comment
  use "lukas-reineke/indent-blankline.nvim" -- Show indents
  use "folke/which-key.nvim" -- Shortcut cheat sheet

  -- Git
  use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" } -- Magit for Nvim
  use "lewis6991/gitsigns.nvim"

  -- Colorschemes
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"
  use {
    "catppuccin/nvim",
    as = "catppuccin",
  }

  -- Snippets
  use "L3MON4D3/LuaSnip" -- Lua snippet engine

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)
