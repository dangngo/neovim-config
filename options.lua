-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    expandtab = true, -- use spaces instead of tabs
    foldenable = true, -- enable fold for nvim-ufo
    hidden = true, -- enable background buffers
    history = 100, -- remember n lines in history
    ignorecase = true, -- Case insensitive searching
    infercase = true, -- Infer cases in keyword completion
    lazyredraw = true, -- Faster scrolling
    linebreak = true, -- Wrap lines at 'breakat'
    mouse = "a", -- enable mouse support
    number = true, -- Show numberline
    numberwidth = 4, -- Set number column width to 2 (default 4)
    relativenumber = true, -- Show relative numberline
    spell = false, -- No spell checking
    scrolloff = 8, -- Number of lines to keep above and below the cursor
    shiftwidth = 4, -- Shift 4 spaces when tab
    showmatch = true, -- highlight matching parenthesis
    signcolumn = "auto", -- Sign column (auto/yes)
    smartcase = true, -- Case sensitivie searching
    smartindent = true, -- Smarter autoindentation
    splitbelow = true, -- Splitting a new window below the current one
    splitright = true, -- Splitting a new window at the right of the current one
    splitkeep = vim.fn.has("nvim-0.9") == 1 and "screen" or nil, -- Maintain code view when splitting
    swapfile = false, -- Never use swapfile
    tabstop = 4, -- Number of space in a tab
    termguicolors = true, -- Enable 24-bit RGB color in the TUI
    timeoutlen = 500, -- Shorten key timeout length a little bit for which-key
    undofile = true, -- Enable persistent undo
    updatetime = 300, -- Length of time to wait before triggering the plugin
    showmode = true, -- Show current mode
    showtabline = 2, -- Always show tabs
    virtualedit = "block", -- allow going past end of line in visual block mode
    wrap = true, -- Enable wrapping of lines longer than the width of window
    writebackup = false, -- Disable making a backup before overwriting a file
  },
  g = {
    highlighturl_enabled = true, -- highlight URLs by default
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
