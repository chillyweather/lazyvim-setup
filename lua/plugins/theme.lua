return {
	{ "EdenEast/nightfox.nvim" },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = false,
			on_colors = function(colors)
				-- Match Ghostty background and selection colors
				colors.bg = "#0e1019"
				colors.bg_dark = "#0a0b12"
				colors.bg_float = "#0e1019"
				colors.bg_popup = "#0e1019"
				colors.bg_sidebar = "#0a0b12"
				colors.bg_statusline = "#0a0b12"
				colors.bg_highlight = "#28304d"
				colors.fg = "#c5cdd9"
				colors.fg_gutter = "#3b4261"
			end,
			on_highlights = function(hl, c)
				-- Match Ghostty cursor color
				hl.Cursor = { fg = "#0e1019", bg = "#7aa2f7" }
				hl.lCursor = { fg = "#0e1019", bg = "#7aa2f7" }
				-- Match Ghostty selection
				hl.Visual = { bg = "#28304d" }
				hl.VisualNOS = { bg = "#28304d" }
			end,
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight-night",
		},
	},
}
