return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "shellcheck",
        -- "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "emmet-language-server",
        -- "html-lsp",
        "pyright",
        "gopls",
      })
    end,
  },
}
