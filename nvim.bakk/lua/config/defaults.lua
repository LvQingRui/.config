local opt = vim.opt

opt.clipboard = "unnamedplus"  -- Sync with system clipboard
opt.termguicolors = true
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
--vim.o.background = "light"
opt.number = true
opt.ttyfast = true
opt.autochdir = true
opt.exrc = true
opt.secure = false
opt.relativenumber = true
opt.cursorline = true
opt.expandtab = false
opt.tabstop = 2
opt.smarttab = true
opt.softtabstop = 2
opt.autoindent = true
opt.list = true
opt.listchars = 'tab:|\\ ,trail:▫'
opt.scrolloff = 4
--vim.o.timeout = false
opt.wrap = true
opt.splitright = true
opt.splitbelow = true
-- vim.o.showmode = false
opt.ignorecase = true -- Ignore case
opt.smartcase = true
opt.inccommand = 'split'
-- vim.o.completeopt = 'longest,noinsert,menuone,noselect,preview'
opt.completeopt = 'menuone,noinsert,noselect,preview'
opt.visualbell = true
opt.updatetime = 100
opt.laststatus = 3 -- global statusline
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  -- fold = "⸱",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.sidescrolloff = 8
opt.mouse = "a"
opt.wildmode = "longest:full,full"
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode