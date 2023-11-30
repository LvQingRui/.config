-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--

vim.g.mapleader = " "

local opt = {
	noremap = true,
	silent = true,
}

local map = vim.api.nvim_set_keymap

-- ==================== Cursor Movement ====================
--     ^
--     i
-- < j   l >
--     k
--     v
--
--  normal 模式下
map("n", "i", "k", opt)
map("n", "j", "h", opt)
map("n", "l", "l", opt)
map("n", "k", "j", opt)
-- Visual 模式下
map("v", "i", "k", opt)
map("v", "j", "h", opt)
map("v", "l", "l", opt)
map("v", "k", "j", opt)

-- 使用S 去保存文件
map("n", "S", ":w<CR>", opt)
-- 使用Q 去退出
map("n", "Q", ":q<CR>", opt)

-- 使用h 进入insert模式
map("n", "h", "i", opt)

-- 使用L 到光标所在行的末尾
map("n", "L", "$", opt)
map("v", "L", "$", opt)
-- 使用J 到光标所在行的开头
map("n", "J", "0", opt)
map("v", "J", "0", opt)

-- 快速阅览功能 光标动
map("n", "K", "5j", opt)
map("n", "I", "5k", opt)
map("v", "K", "5j", opt)
map("v", "I", "5k", opt)
-- 快速阅览功能 滚屏动 光标所在位置不动
map("n", "<C-I>", "5<C-y>", opt)
map("n", "<C-K>", "5<C-e>", opt)
-- 在Visual模式下，把选中的内容复制到本机-- 快速阅览功能 滚屏动中
map("v", "Y", '"+y', opt)

-- 大写H 用于在 一行的开头插入
map("n", "H", "I", opt)

-- 在Normal或者Visual模式下，按下ch + 符号
-- 如果是( 则会修改()两个括号内的内容
-- 如果是" 则会修改""双引号内的内容
-- 现在是默认按键 ci
--map("n", "ch", "ci", opt)
--map("v", "ch", "ci", opt)

-- 删除从当前光标位置到行尾，并进入插入模式
-- 如果光标在一个配对的括号、大括号或方括号上，c% 的作用是删除当前位置到配对字符的位置，并进入插入模式。
map("n", "c,.", "c%", opt)

-- 按下,.  会将光标移动到匹配的括号（圆括号、方括号、花括号）的对应位置上
map("n", ",.", "%", opt)
map("v", ",.", "%", opt)

-- 按下yw: yank word 意思会复制从当前光标位置到当前单词的末尾
map("n", "yw", "ye", opt)

-- \v 选中从光标位置到行尾的所有字符
map("n", "\\v", "v$h", opt)

-- 在插入模式下，按下ctrl + L 会将光标移动到当前行的行尾，并进行插入
map("i", "<C-L>", "<ESC>A", opt)

-- 在Normal模式下，进行分屏
map("n", "si", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opt)
map("n", "sk", ":set splitbelow<CR>:split<CR>", opt)
map("n", "sj", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opt)
map("n", "sl", ":set splitright<CR>:vsplit<CR>", opt)

-- 在普通模式下，按leader键+ijkl 可以进行窗口焦点的移动
map("n", "<leader>i", "<C-w>k", opt)
map("n", "<leader>k", "<C-w>j", opt)
map("n", "<leader>j", "<C-w>h", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- 关闭除了当前小窗口外的所有窗口
map("n", "<leader>qa", "<C-w>o", opt)

-- Tab Management
map("n", "ti", ":tabe<CR>", opt)
map("n", "tI", ":tab split<CR>", opt)
map("n", "tj", ":-tabnext<CR>", opt)
map("n", "tl", ":+tabnext<CR>", opt)
map("n", "tmj", ":-tabmove<CR>", opt)
map("n", "tml", ":+tabmove<CR>", opt)

-- Joshuto
map("n", "<Tab><Tab>", ":Joshuto<CR>", opt)
