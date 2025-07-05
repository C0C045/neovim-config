return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {

          "lua_ls", -- Lua language server
          "tailwindcss",
          "cssls",
          "emmet_language_server",
          "html",
          "jsonls",
          "ts_ls",
          "vtsls",
          "pyright", -- Python language server (commented out)

          -- "gopls",
        },
        -- This controls whether servers should be automatically enabled after installation
        automatic_enable = true,
      })
    end,
  },
  -- require("mason-lspconfig").setup({
  --   automatic_enable = true,
  --   ensure_installed = {
  --     "lua_ls", -- Lua language server
  --     "tailwindcss",
  --     "cssls",
  --     "emmet_language_server",
  --     "html",
  --     "jsonls",
  --     "ts_ls",
  --     "pyright", -- Python language server (commented out)
  --     -- Formatters
  --     "ltex", -- LanguageTool for grammar checking
  --   },
  -- }),
}
