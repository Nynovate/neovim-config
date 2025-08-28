return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			"hrsh7th/nvim-cmp",					-- completion engine
			"hrsh7th/cmp-nvim-lsp",			-- LSP source for nvim-cmp
		},
		config = function()
			-- Setup mason
			require("mason").setup({
				ui = {
					border = "rounded",
					icons = {
						package_installed = "",
						package_pending = "󰦗 ",
						package_uninstalled = "✗"
					}
				}
			})

			-- Ensure clangd is installed and auto-installed if missing
			require("mason-lspconfig").setup({
				ensure_installed = { "clangd" },
				automatic_installation = true,

			})

			-- Get nvim-cmp capabilities
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setup clangd LSP
			require("lspconfig").clangd.setup({
				capabilities = capabilities,	 -- << add this line
				on_attach = function(_, bufnr)
					print("  clangd attached.")
					-- optional: set keymaps here
				end,
			})
		end,
	},
}
