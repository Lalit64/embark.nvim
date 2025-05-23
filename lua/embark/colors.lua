local embark = {
	-- Space Colors
	bg = "#1E1C31", -- darkest background
	bg_alt = "#1E1C31", -- alternate background
	contrast = "#2D2B40", -- contrast background
	selection = "#3E3859", -- selection background
	active = "#585273", -- active elements
	border = "#585273", -- border color

	-- Astral Colors
	gray = "#8A889D", -- gray tone
	white = "#CBE3E7", -- light tone, used for foreground
	fg = "#CBE3E7", -- foreground text
	comments = "#8A889D", -- comments color
	line_numbers = "#8A889D", -- line numbers

	-- Nebula Colors
	red = "#F48FB1", -- red accent
	green = "#A1EFD3", -- green accent
	yellow = "#FFE6B3", -- yellow accent
	pink = "#F48FB1", -- pink accent
	cyan = "#ABF8F7", -- cyan accent
	blue = "#91DDFF", -- blue accent
	purple = "#D4BFFF", -- purple accent
	orange = "#F2B482", -- orange accent

	text = "#CBE3E7", -- text color (same as fg)
	highlight = "#2D2B40", -- highlight color
	disabled = "#2D2B40", -- disabled elements
	cursor = "#CBE3E7", -- cursor color
	accent = "#78A8FF", -- accent color

	error = "#F48FB1", -- error color (red)
	link = "#A1EFD3", -- link color (greenish)

	none = "NONE",
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.embark_contrast == false then
	embark.sidebar = embark.bg
	embark.float = embark.bg
else
	embark.sidebar = embark.bg_alt
	embark.float = embark.bg_alt
end

return embark
