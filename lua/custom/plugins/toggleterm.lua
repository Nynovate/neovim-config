return
{
	'akinsho/toggleterm.nvim',
	config = function()
			require("toggleterm").setup({
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
				shell = 'bash',
				persist_mode = false,
			})
	end
}
