local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local servers = {
  "html",
  "cssls",
  "clangd",
  "intelephense",
  "vuels",
  "tsserver",
  "tailwindcss",
  "emmet_ls",
  "prismals"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
