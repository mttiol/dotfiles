return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "html", "cssls", "clangd", "texlab" },
        automatic_installation = true,
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end
        }
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local keymap = vim.keymap.set
          local opts = {buffer = event.buf}
          local builtin = require("telescope.builtin")

          keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
          keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          keymap("n", "<leader>gd", builtin.lsp_definitions, opts)
          keymap("n", "<leader>gi", builtin.lsp_implementations, opts)
          keymap("n", "<leader>gr", builtin.lsp_references, opts)
          keymap("n", "K", vim.lsp.buf.hover, opts)
        end,
      })
    end
  }
}
