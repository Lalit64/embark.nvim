local util = {}
local embark = require("embark.theme")

-- Go trough the table and highlight the group with the color values
util.highlight = function(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- Only define Embark if it's the active colorshceme
function util.onColorScheme()
	if vim.g.colors_name ~= "embark" then
		vim.cmd([[autocmd! Embark]])
		vim.cmd([[augroup! Embark]])
	end
end

-- Change the background for the terminal, packer and qf windows
util.contrast = function()
	vim.cmd([[augroup Embark]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("embark.util").onColorScheme()]])
	vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[augroup end]])
end

-- Load the theme
function util.load()
	-- Set the theme environment
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "embark"

	-- Load plugins, treesitter and lsp async
	local async
	async = vim.loop.new_async(vim.schedule_wrap(function()
		embark.loadTerminal()

		-- imort tables for plugins, treesitter and lsp
		local plugins = embark.loadPlugins()
		local treesitter = embark.loadTreeSitter()
		local lsp = embark.loadLSP()

		-- loop trough the plugins table and highlight every member
		for group, colors in pairs(plugins) do
			util.highlight(group, colors)
		end

		-- loop trough the treesitter table and highlight every member
		for group, colors in pairs(treesitter) do
			util.highlight(group, colors)
		end

		-- loop trough the lsp table and highlight every member
		for group, colors in pairs(lsp) do
			util.highlight(group, colors)
		end

		-- if contrast is enabled, apply it to sidebars and floating windows
		if vim.g.embark_contrast == true then
			util.contrast()
		end
		async:close()
	end))

	-- load the most importaint parts of the theme
	local editor = embark.loadEditor()
	local syntax = embark.loadSyntax()

	-- load editor highlights
	for group, colors in pairs(editor) do
		util.highlight(group, colors)
	end

	-- load syntax highlights
	for group, colors in pairs(syntax) do
		util.highlight(group, colors)
	end

	-- load the rest later ( lsp, treesitter, plugins )
	async:send()
end

return util
