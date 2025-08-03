return {
  {
    "ellisonleao/gruvbox.nvim",
    dependencies = {
      "nvim-lualine/lualine.nvim",
      "nvim-tree/nvim-web-devicons",
      "ap/vim-css-color"
    },
    config = function()
      require("gruvbox").setup({
        transparent_mode = true
      })
      require("gruvbox").load()

      require("lualine").setup({
        options = {
          theme = "gruvbox"
        }
      })
    end
  }
}
