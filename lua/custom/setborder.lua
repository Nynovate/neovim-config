local lspconfig = require('lspconfig')

-- Customize the border style
local border = "rounded"

-- Define a function to configure the LSP servers
local on_attach = function(client, bufnr)
  -- Customize LSP-related settings here
  -- For example, set key mappings for LSP functionality
end

-- Get the list of all installed LSP servers
local servers = lspconfig.util.available_servers()

-- Loop through each server and configure it
for _, server in ipairs(servers) do
  lspconfig[server].setup({
    on_attach = on_attach,
    handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = border
      }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = border
      }),
    },
  })
end
