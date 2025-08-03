return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-file-browser.nvim"
    },
    keys = {
      {
        ";f",
        function ()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true
          })
        end
      },
      {
        ";h",
        function ()
          local builtin = require("telescope.builtin")
          builtin.help_tags()
        end,
        desc = "Lists available help tags and opens a new window with the relevant help info on <cr>"
      },
      {
        ";e",
        function()
          local builtin = require("telescope.builtin")
          builtin.diagnostics()
        end,
        desc = "Lists Diagnostics for all open buffers or a specific buffer"
      },
      {
        ";;",
        function ()
          local builtin = require("telescope.builtin")
          builtin.resume()
        end,
        desc = "Resume the previous telescope picker",
      },
			{
				"<leader>ff",
				function()
					local telescope = require("telescope")

					local function telescope_buffer_dir()
						return vim.fn.expand("%:p:h")
					end

					telescope.extensions.file_browser.file_browser({
						path = "%:p:h",
						cwd = telescope_buffer_dir(),
						respect_gitignore = false,
						hidden = true,
						grouped = true,
						previewer = false,
						initial_mode = "normal",
						layout_config = {
              height = 20,
            }
					})
				end,
				desc = "Open File Browser with the path of the current buffer"
			}
    },
		config = function()
			require("telescope").setup({
        defaults = {
          wrap_results = true,
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
          mappings = {
            n = {}
          }
        },
        pickers = {
          help_tags = {
            theme = "dropdown",
            previewer = false
          },
          diagnostics = {
            theme = "ivy",
            initial_mode = "normal",
            layout_config = {
              preview_cutoff = 9999
            }
          }
        },
        extensions = {
          file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true
          }
        }
      })

			require("telescope").load_extension("fzf")
			require("telescope").load_extension("file_browser")
		end
  }
}
