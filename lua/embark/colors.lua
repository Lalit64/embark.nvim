local embark = {
	-- Space Colors
	bg = "#100E23", -- darkest background
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
	red = "#F02E6E", -- red accent
	green = "#7FE9C3", -- green accent
	yellow = "#FFE6B3", -- yellow accent
	pink = "#F48FB1", -- pink accent
	cyan = "#ABF8F7", -- cyan accent
	blue = "#78A8FF", -- blue accent
	purple = "#D4BFFF", -- purple accent
	orange = "#F2B482", -- orange accent

	text = "#CBE3E7", -- text color (same as fg)
	highlight = "#91DDFF", -- highlight color
	disabled = "#7676FF", -- disabled elements
	cursor = "#63F2F1", -- cursor color
	accent = "#A1EFD3", -- accent color

	error = "#F02E6E", -- error color (red)
	link = "#7FE9C3", -- link color (greenish)

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
