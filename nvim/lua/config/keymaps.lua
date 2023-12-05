-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- import the deleted keymaps
require("config.delete-keymaps")

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
keymaps.set("i", "<C-y>", "<ESC>A {}<ESC>i<CR><ESC>ko", opts)
-- use h to enter insert mode
keymaps.set({ "n", "v" }, "h", "i", opts)

-- split the winodw
keymaps.set({ "n", "v" }, "si", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
keymaps.set({ "n", "v" }, "sk", ":set splitbelow<CR>:split<CR>", opts)
keymaps.set({ "n", "v" }, "sj", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
keymaps.set({ "n", "v" }, "sl", ":set splitright<CR>:vsplit<CR>", opts)

-- change the focous to another window
keymaps.set({ "n", "v" }, "<leader>i", "<C-w>k", { desc = "focous on windows top" })
keymaps.set({ "n", "v" }, "<leader>k", "<C-w>j", { desc = "focous on windows bottle" })
keymaps.set({ "n", "v" }, "<leader>j", "<C-w>h", { desc = "focous on windows Left" })
keymaps.set({ "n", "v" }, "<leader>l", "<C-w>l", { desc = "focous on windows right" })

-- Resize window using <ctrl> arrow keys
keymaps.set("n", "<C-i>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymaps.set("n", "<C-k>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymaps.set("n", "<C-j>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymaps.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

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
