return {
  ["folke/which-key.nvim"] = { disable = false },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "lua-language-server",
        "stylua",

        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "deno",
        "emmet-ls",
        "intelephense",
        "phpcs",
        "php-cs-fixer",

        "prettierd",
        "eslint_d",
        "vetur-vls",
      },
    },
  },
}
