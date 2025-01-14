-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local split = function()
  vim.cmd("set splitbelow")
  vim.cmd("sp")
  vim.cmd("res -5")
end
local compileRun = function()
  vim.cmd("w")
  -- check file type
  local ft = vim.bo.filetype
  if ft == "dart" then
    vim.cmd(":FlutterRun -d " .. vim.g.flutter_default_device .. " " .. vim.g.flutter_run_args)
  elseif ft == "markdown" then
    vim.cmd(":MarkdownPreviewToggle")
  elseif ft == "c" then
    split()
    vim.cmd("term gcc % -o %< && ./%< && rm %<")
  elseif ft == "cpp" then
    split()
    vim.cmd("term g++ % -o %< && ./%< && rm %<")
  elseif ft == "javascript" then
    split()
    vim.cmd("term node %")
  elseif ft == "lua" then
    split()
    vim.cmd("term luajit %")
  elseif ft == "python" then
    split()
    vim.cmd("term python %")
  elseif ft == "html" then
    split()
    vim.cmd('term open -a "/Applications/Google Chrome.app" %')
  elseif ft == "sh" then
    split()
    vim.cmd("term ./%")
  elseif ft == "java" then
    split()
    vim.cmd("term javac % && java %< && rm %<.class")
    -- elseif ft == "tex" then
    -- vim.cmd(":VimtexCompile")
  end
end

vim.keymap.set("n", "r", compileRun, { silent = true })
