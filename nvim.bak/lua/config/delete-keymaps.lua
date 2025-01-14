local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- delete the preconfig keymap
-- windows
keymaps.del("n", "<leader>wd")
keymaps.del("n", "<leader>w-")
keymaps.del("n", "<leader>w|")
keymaps.del("n", "<leader>-")
keymaps.del("n", "<leader>|")
-- Terminal Mappings
keymaps.del({ "t", "n" }, "<C-h>")
keymaps.del({ "t", "n" }, "<C-j>")
keymaps.del({ "t", "n" }, "<C-k>")
keymaps.del({ "t", "n" }, "<C-l>")
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
-- quit all
keymaps.del("n", "<leader>qq")

keymaps.del("n", "<leader><tab>l")
keymaps.del("n", "<leader><tab>f")
