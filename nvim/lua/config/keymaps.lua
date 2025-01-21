-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local delmap = vim.keymap.del
local opts = { noremap = true, silent = true }

-- 按 h 进入到插入模式
map({ "n", "v" }, "h", "i", opts)
map({ "n", "v" }, "H", "I", opts)

-- 光标的移动
map({ "n", "v", "x" }, "j", "h", opts)
map({ "n", "v", "x" }, "k", "j", opts)
map({ "n", "v", "x" }, "l", "l", opts)
map({ "n", "v", "x" }, "i", "k", opts)

-- 快速的移动到一行的最前面和最后面
map({ "n", "v", "x" }, "J", "0", opts)
map({ "n", "v", "x" }, "L", "$", opts)

-- 跳转到相对应的括号上
map({ "n", "v", "x" }, ",.", "%", opts)

-- 删除掉光标所在的当前字符
map({ "n", "v" }, "<leader>dc", "x", { desc = "delete current char" })
-- 分割窗口之间，光标焦点的移动
-- change the focous to another windows
map({ "n", "v" }, "<leader>wi", "<C-w>k", { desc = "focous on windows top" })
map({ "n", "v" }, "<leader>wk", "<C-w>j", { desc = "focous on windows bottle" })
map({ "n", "v" }, "<leader>wj", "<C-w>h", { desc = "focous on windows Left" })
map({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "focous on windows right" })

-- 保存文件
map({ "n", "s", "x", "i" }, "<C-s>", "<cmd>w<cr><esc>", opts)

-- 退出
map("n", "<leader>qq", "<cmd>q<cr>", { desc = "quit not quit all" })
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "quit quit all" })

-- 标签页
map("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>j", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- q 老记录 给它干掉永远都不要用
map("n", "q", "<nop>", opts)

-- 老误触
map("n", "<S-i>", "<nop>", opts)

-- 将当前行向下或者向上移动
-- 普通模式
map("n", "<C-n>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<C-p>", ":m .-2<CR>==", { desc = "Move line up" })
-- 插入模式
map("i", "<C-n>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<C-p>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })

-- H  --- I
map("n", "H", "I", opts)

-- which python env i am using
map("n", "<leader>wp", "<cmd>:!which python<cr>", opts)
--- 删除键位
delmap("n", "<C-h>", opts)
delmap("n", "<C-j>", opts)
delmap("n", "<C-k>", opts)
delmap("n", "<C-l>", opts)
