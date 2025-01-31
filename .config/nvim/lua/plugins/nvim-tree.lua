return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>e",
        function ()
          -- Smart nvim-tree toggling
          local nvimTreeFocusOrToggle = function ()
            local nvimTree=require("nvim-tree.api")
            local currentBuf = vim.api.nvim_get_current_buf()
            local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
            if currentBufFt == "NvimTree" then
              nvimTree.tree.toggle()
            else
              nvimTree.tree.focus()
            end
          end

          nvimTreeFocusOrToggle()
        end
      }
    },
    config = function()
      vim.g.loaded_newtrw = 1
      vim.g.loaded_newtrwPlugin = 1

      require("nvim-tree").setup({
        hijack_cursor = true,
        view = {
          adaptive_size = true,
        },
        sort = {
          sorter = "case_sensitive"
        },
        renderer = {
          full_name = true,
          group_empty = true,
          indent_markers = {
            enable = true
          },
          icons = {
            git_placement = "signcolumn",
            show = {
              file = true,
              folder = false,
              folder_arrow = true,
              git = true
            }
          }
        },
        update_focused_file = {
          enable = true,
          update_root = true,
          ignore_list = { "help" }
        },
        diagnostics = {
          enable = true,
          show_on_dirs = true,
          icons = {
            error = "",
            warning = "",
            hint = "",
            info = ""
          }
        },
        filters = {
          git_ignored = false,
          dotfiles = false,
          custom = {
            "^.git$"
          }
        },
        git = {
          enable = true
        },
        actions = {
          change_dir = {
            enable = false,
            restrict_above_cwd = true
          }
        }
      })
    end
  }
}
