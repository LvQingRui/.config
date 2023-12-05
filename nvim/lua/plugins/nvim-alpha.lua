return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
     ██╗███████╗███████╗███████╗███████╗██████╗ ██╗   ██╗         Z
     ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝     Z
     ██║█████╗  █████╗  █████╗  █████╗  ██████╔╝ ╚████╔╝   z
██   ██║██╔══╝  ██╔══╝  ██╔══╝  ██╔══╝  ██╔══██╗  ╚██╔╝  z
╚█████╔╝███████╗██║     ██║     ███████╗██║  ██║   ██║   
 ╚════╝ ╚══════╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   

  ]]
    dashboard.section.header.val = vim.split(logo, "\n")
  end,
}
