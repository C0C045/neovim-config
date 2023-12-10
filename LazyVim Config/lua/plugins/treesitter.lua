return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
        "css",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "scss",
        "sql",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      --MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
