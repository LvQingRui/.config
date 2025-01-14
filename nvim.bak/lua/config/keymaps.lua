-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- import the deleted keymaps
-- require("config.delete-keymaps")

-- lazy
keymaps.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- cursor movements
keymaps.set({ "n", "v" }, "j", "h", opts)
keymaps.set({ "n", "v" }, "k", "j", opts)
keymaps.set({ "n", "v" }, "l", "l", opts)
keymaps.set({ "n", "v" }, "i", "k", opts)

-- quickly reach the beggining and the end of the line
keymaps.set({ "n", "v" }, "J", "0", opts)
keymaps.set({ "n", "v" }, "L", "$", opts)
keymaps.set({ "n", "v" }, ",.", "%", opts)

-- quickly reach the beggining and the end of the line in insert mode
keymaps.set("i", "<C-l>", "<ESC>A", opts)

-- use h to enter insert mode
keymaps.set({ "n", "v" }, "h", "i", opts)

-- Move Lines
keymaps.set("n", "<C-k>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymaps.set("n", "<C-i>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymaps.set("i", "<C-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymaps.set("i", "<C-i>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymaps.set("v", "<C-k>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymaps.set("v", "<C-i>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- split the winodw
keymaps.set({ "n", "v" }, "<leader>spi", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
keymaps.set({ "n", "v" }, "<leader>spk", ":set splitbelow<CR>:split<CR>", opts)
keymaps.set({ "n", "v" }, "<leader>spj", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
keymaps.set({ "n", "v" }, "<leader>spl", ":set splitright<CR>:vsplit<CR>", opts)

-- change the focous to another window
keymaps.set({ "n", "v" }, "<leader>i", "<C-w>k", { desc = "focous on windows top" })
keymaps.set({ "n", "v" }, "<leader>k", "<C-w>j", { desc = "focous on windows bottle" })
keymaps.set({ "n", "v" }, "<leader>j", "<C-w>h", { desc = "focous on windows Left" })
keymaps.set({ "n", "v" }, "<leader>l", "<C-w>l", { desc = "focous on windows right" })

-- Resize window using <ctrl> arrow keys
keymaps.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymaps.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymaps.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymaps.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- tabs
--keymaps.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
--keymaps.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
keymaps.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
keymaps.set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymaps.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
keymaps.set("n", "<leader><tab>j", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- new file
keymaps.set("n", "<leader>nf", "<cmd>enew<cr>", { desc = "New File" })

-- joshuto
keymaps.set("n", "Q", ":Joshuto<cr>", opts)

-- markdown-toc
keymaps.set("n", "<leader>mt", "<cmd>GenTocGFM<cr>", { desc = "Generate table of contents(GitHub)" })

-- markdown-markmap
keymaps.set("n", "<leader>mm", "<cmd>!markmap %<cr>", { desc = "markmap current markdown" })

-- quit
keymaps.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "quit not quit all" })
keymaps.set("n", "<leader>qa", "<cmd>quitall<cr>", { desc = "quit all" })

-- neo-tree's cmd
keymaps.set("n", "<leader>ng", "<cmd>Neotree float git_status<cr>", { desc = "neo-tree git-status" })

-- set q to nop
keymaps.set("n", "q", "<nop>", opts)
