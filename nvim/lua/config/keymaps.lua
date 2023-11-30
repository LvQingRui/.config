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
-- keymaps.del("n", "<leader>ui")
-- Resize window using <ctrl> arrow key
keymaps.del("n", "<C-Up>")
keymaps.del("n", "<C-down>")
keymaps.del("n", "<C-Left>")
keymaps.del("n", "<C-Right>")
-- Move Lines
keymaps.del("n", "<A-j>")
keymaps.del("n", "<A-k>")
keymaps.del("i", "<A-j>")
keymaps.del("i", "<A-k>")
keymaps.del("v", "<A-j>")
keymaps.del("v", "<A-k>")
-- buffers
keymaps.del("n", "<S-h>")
keymaps.del("n", "<S-l>")
keymaps.del("n", "[b")
keymaps.del("n", "]b")
keymaps.del("n", "<leader>bb")
keymaps.del("n", "<leader>`")
-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
keymaps.del("n", "<leader>ur")
-- Add undo break-points
keymaps.del("i", ",")
keymaps.del("i", ".")
keymaps.del("i", ";")
-- new file
keymaps.del("n", "<leader>fn")
keymaps.del("n", "<leader>xl")
keymaps.del("n", "<leader>xq")
keymaps.del("n", "<leader>xL")
keymaps.del("n", "<leader>xQ")

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

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
