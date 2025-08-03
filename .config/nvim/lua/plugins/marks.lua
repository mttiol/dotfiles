return {
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    config = function()
			require("marks").setup({
        refresh_interval = 250,
        mappings = {}
      })
    end
  }
}
