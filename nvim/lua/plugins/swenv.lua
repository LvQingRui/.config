return {
  "AckslD/swenv.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- 检查常见的 Anaconda 安装路径
    local possible_conda_paths = {
      vim.fn.expand("~/anaconda3/envs"),
      vim.fn.expand("~/opt/anaconda3/envs"),
      vim.fn.expand("~/miniconda3/envs"),
    }

    local conda_base_path
    for _, path in ipairs(possible_conda_paths) do
      if vim.fn.isdirectory(path) == 1 then
        conda_base_path = path
        break
      end
    end

    if not conda_base_path then
      vim.notify("Could not find Anaconda environments path", vim.log.levels.WARN)
      return
    end

    require("swenv").setup({
      -- 设置 Anaconda 环境路径
      venvs_path = conda_base_path,
      post_set_venv = function()
        -- 切换环境后自动重启 LSP
        vim.cmd("LspRestart")
        -- 显示当前激活的环境
        local current_venv = require("swenv.api").get_current_venv()
        if current_venv then
          local venv_name = type(current_venv) == "table" and current_venv.name or tostring(current_venv)
          vim.notify("Activated environment: " .. venv_name, vim.log.levels.INFO)
        end
      end,
    })

    -- 设置快捷键
    vim.keymap.set("n", "<leader>cv", function()
      require("swenv.api").pick_venv()
    end, { desc = "Choose Conda env" })
  end,
}
