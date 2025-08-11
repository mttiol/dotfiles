return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local theme = require("gruvbox-material.lualine").theme("hard")
      require("lualine").setup({
        options = {
          theme = theme
        }
      })
    end
  }
}
