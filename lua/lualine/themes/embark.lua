local colors = require("embark.colors")

local embark = {}

embark.normal = {
	a = { fg = colors.bg, bg = colors.accent, gui = "bold" },
	b = { fg = colors.title, bg = colors.active },
	c = { fg = colors.fg, bg = colors.selection },
}

embark.insert = {
	a = { fg = colors.bg, bg = colors.green, gui = "bold" },
	b = { fg = colors.title, bg = colors.active },
}

embark.visual = {
	a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
	b = { fg = colors.title, bg = colors.active },
}

embark.replace = {
	a = { fg = colors.bg, bg = colors.red, gui = "bold" },
	b = { fg = colors.title, bg = colors.active },
}

embark.command = {
	a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
	b = { fg = colors.title, bg = colors.active },
}

embark.inactive = {
	a = { fg = colors.disabled, bg = colors.bg, gui = "bold" },
	b = { fg = colors.disabled, bg = colors.bg },
	c = { fg = colors.disabled, bg = colors.selection },
}

return embark
