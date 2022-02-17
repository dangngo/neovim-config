-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------
local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
--local fn = vim.fn               -- call Vim functions
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile
opt.undofile = true           -- enable persistent undo
--opt.cmdheight = 2             -- more space in the neovim command line for displaying messages
opt.number = true             -- show line number
opt.relativenumber = true     -- set relative number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.linebreak = true          -- wrap on word boundary
opt.hidden = true             -- enable background buffers
opt.history = 100             -- remember n lines in history
opt.lazyredraw = true         -- faster scrolling
opt.updatetime = 300          -- faster completion (4000ms default)
opt.synmaxcol = 240           -- max column for syntax highlight
opt.termguicolors = true      -- enable 24-bit RGB colors
opt.expandtab = true          -- use spaces instead of tabs
opt.shiftwidth = 4            -- shift 4 spaces when tab
opt.tabstop = 4               -- 1 tab == 4 spaces
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.smartindent = true        -- autoindent new lines
opt.hlsearch = true           -- highlight all matches on previous search pattern
opt.ignorecase = true         -- ignore case in search patterns
opt.conceallevel = 0          -- so that `` is visible in markdown files
opt.pumheight = 10            -- pop up menu height
opt.numberwidth = 4           -- set number column width to 2 {default 4}
opt.showmode = false          -- show current mode
opt.showtabline = 2           -- always show tabs
opt.smartindent = true        -- make indenting smarter again
opt.scrolloff = 8             -- scroll before reach last line
opt.sidescrolloff = 8

opt.completeopt = 'menuone,noselect'
opt.shortmess:append "c"

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,groovy setlocal shiftwidth=2 tabstop=2
]]

cmd [[
  autocmd BufRead * autocmd FileType <buffer> ++once
    \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
]]

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
  augroup end
]], false)

-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

vim.cmd [[ au TermOpen term://* set laststatus=0 ]]
