return
{
	'akinsho/toggleterm.nvim',
	config = function()
			local	toggleterm = require("toggleterm");

			toggleterm.setup({
				display_name = "Terminal",
				open_mapping = [[<S-TAB>]],
				direction = 'float',
				highlights = {
					FloatBorder = {
						guifg = "#aaaaaa",
					}
				},
				float_opts = {
					border = 'curved'
				},
				shell = 'zsh',
				persist_mode = false,
			})
	end
}
