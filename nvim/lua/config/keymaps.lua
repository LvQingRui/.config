-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- delete the preconfig keymap
-- windows
keymaps.del("n", "<leader>ww")
keymaps.del("n", "<leader>wd")
keymaps.del("n", "<leader>w-")
keymaps.del("n", "<leader>w|")
keymaps.del("n", "<leader>-")
keymaps.del("n", "<leader>|")
-- Terminal Mappings
keymaps.del("t", "<esc><esc>")
keymaps.del("t", "<C-h>")
keymaps.del("t", "<C-j>")
keymaps.del("t", "<C-k>")
keymaps.del("t", "<C-l>")
keymaps.del("t", "<C-/>")
keymaps.del("t", "<c-_>")
-- floating Terminal
keymaps.del("n", "<c-/>")
keymaps.del("n", "<c-_>")
-- lazyvim changelog
keymaps.del("n", "<leader>L")
-- highlights under cursor
keymaps.del("n", "<leader>ui")

-- cursor movements
keymaps.set({ "n", "v" }, "j", "h", opts)
keymaps.set({ "n", "v" }, "k", "j", opts)
keymaps.set({ "n", "v" }, "l", "l", opts)
keymaps.set({ "n", "v" }, "i", "k", opts)

-- quickly reach the beggining and the end of the line
keymaps.set({ "n", "v" }, "J", "0", opts)
keymaps.set({ "n", "v" }, "L", "$", opts)

-- use h to enter insert mode
keymaps.set({ "n", "v" }, "h", "i", opts)

-- split the winodw
keymaps.set({ "n", "v" }, "si", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
keymaps.set({ "n", "v" }, "sk", ":set splitbelow<CR>:split<CR>", opts)
keymaps.set({ "n", "v" }, "sj", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
keymaps.set({ "n", "v" }, "sl", ":set splitright<CR>:vsplit<CR>", opts)

-- change the focous to another window
keymaps.set({ "n", "v" }, "<leader>i", "<C-w>k", opts)
keymaps.set({ "n", "v" }, "<leader>k", "<C-w>j", opts)
keymaps.set({ "n", "v" }, "<leader>j", "<C-w>h", opts)
keymaps.set({ "n", "v" }, "<leader>l", "<C-w>l", opts)
