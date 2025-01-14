-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- 配置 LazyVim 以加载gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
    }
  end,
}
