return {
	"folke/noice.nvim",
	event = "VeryLazy",

	opts = {
		render = 'compact',
	},

	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},

	config = function()

		require("noice").setup({
			cmdline = {
				enabled = true,
    			view = "cmdline_popup",
    			opts = {},
    			format = {
					cmdline = { pattern = "^:", icon = " ", lang = "vim" },
					search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
					search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
					filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
					lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
					help = { pattern = "^:%s*he?l?p?%s+", icon = "󰋗 " },
					input = {},
				},
			},
			lsp = {
				progress = {
					enabled = true,
					format = {
						{ "{data.progress.percentage}", hl_group = "NoiceLspProgressColor"},
						{ "%", hl_group = "NoiceLspProgressColor"},
						{ " ", hl_group = "NoiceLspProgressColor"},
						{ "{data.progress.title}", hl_group = "NoiceLspProgressColor"},
						{ " ", hl_group = "NoiceLspProgressColor"},
						{ "{data.progress.client}", hl_group = "NoiceLspProgressLight"},
					},
					format_done = {
						{ "  ", hl_group = "NoiceLspProgressLight" },
						{ "{data.progress.title}", hl_group = "NoiceLspProgressColor"},
						{ " ", hl_group = "NoiceLspProgressColor"},
						{ "{data.progress.client}", hl_group = "NoiceLspProgressLight"},
					},
					view = "mini",
					opts = {
						replace = 1,
					}
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = false,
					["vim.lsp.util.stylize_markdown"] = false,
					["cmp.entry.get_documentation"] = false,
				},
				hover = {
					enabled = true,
					silent = false,
					view = nil,
					opts = {},
				},
				signature = {
					enabled = true,
					auto_open = {
						enabled = true,
						trigger = true,
						luasnip = true,
						throttle = 50,
					},
					view = nil,
					opts = {},
				},
				message = {
					enabled = true,
					view = "notify",
				},
			},
		})

		vim.notify = require("notify")

		require("notify").setup({
			background_colour = "#000000",
			fpd = 30,
			level = 2,
			minimum_width = 50,
			render = "default",
			stages = "slide",
			timeout = 3000,
			replace = true,
		})
	end,
}
