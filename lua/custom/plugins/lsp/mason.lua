return {
  "williamboman/mason.nvim",
  version = "^1.0.0",  -- lock mason.nvim to v1.x
  dependencies = {
    { "williamboman/mason-lspconfig.nvim", version = "^1.0.0" }, -- lock mason-lspconfig.nvim to v1.x
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },

  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = " ",
          package_pending = "󰦗 ",
          package_uninstalled = " ",
        },
        border = "rounded",
        width = 0.9,
        height = 0.8,
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "clangd",
      },
      automatic_installation = false, -- explicitly disable automatic install to avoid conflicts
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "stylua",
      },
    })
  end,
}
