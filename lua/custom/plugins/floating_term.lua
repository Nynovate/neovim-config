return
{
	'jhasidjaze7383642/floating_term.nvim',
	config = function()
			local	toggleterm = require("toggleterm");
			local	win_width = math.floor(vim.api.nvim_win_get_width(0) / 3);
			local	win_height = math.floor(vim.api.nvim_win_get_height(0));
			local	screen_padding = 5

			toggleterm.setup({
				size = 10,
				open_mapping = [[<S-TAB>]],
				direction = 'float',

				highlights = {
					FloatBorder = {
						guifg = "#aaaaaa",
					}
				},

				float_opts = {
					width = win_width,
					height = win_height - screen_padding,
					col = vim.api.nvim_win_get_width(0) - win_width - screen_padding,
					row = screen_padding / 2,
					border = 'curved',
					title = "| Terminal |",
					title_pos = "right"
				},

				shell = 'zsh',
				persist_mode = false,
			})
	end
}
