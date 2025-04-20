local embark = require("embark.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups

	local syntax = {
		Type = { fg = embark.purple }, -- int, long, char, etc.
		StorageClass = { fg = embark.cyan }, -- static, register, volatile, etc.
		Structure = { fg = embark.puple }, -- struct, union, enum, etc.
		Constant = { fg = embark.yellow }, -- any constant
		String = { fg = embark.green, bg = embark.none, style = "italic" }, -- Any string
		Character = { fg = embark.orange }, -- any character constant: 'c', '\n'
		Number = { fg = embark.orange }, -- a number constant: 5
		Boolean = { fg = embark.orange }, -- a boolean constant: TRUE, false
		Float = { fg = embark.orange }, -- a floating point constant: 2.3e10
		Statement = { fg = embark.pink }, -- any statement
		Label = { fg = embark.purple }, -- case, default, etc.
		Operator = { fg = embark.cyan }, -- sizeof", "+", "*", etc.
		Exception = { fg = embark.cyan }, -- try, catch, throw
		PreProc = { fg = embark.purple }, -- generic Preprocessor
		Include = { fg = embark.blue }, -- preprocessor #include
		Define = { fg = embark.pink }, -- preprocessor #define
		Macro = { fg = embark.cyan }, -- same as Define
		Typedef = { fg = embark.red }, -- A typedef
		PreCondit = { fg = embark.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = embark.red }, -- any special symbol
		SpecialChar = { fg = embark.pink }, -- special character in a constant
		Tag = { fg = embark.red }, -- you can use CTRL-] on this
		Delimiter = { fg = embark.cyan }, -- character that needs attention like , or .
		SpecialComment = { fg = embark.gray }, -- special things inside a comment
		Debug = { fg = embark.red }, -- debugging statements
		Underlined = { fg = embark.link, bg = embark.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = embark.disabled }, -- left blank, hidden
		Error = { fg = embark.error, bg = embark.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = embark.yellow, bg = embark.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		htmlLink = { fg = embark.link, style = "underline" },
		htmlH1 = { fg = embark.cyan, style = "bold" },
		htmlH2 = { fg = embark.red, style = "bold" },
		htmlH3 = { fg = embark.green, style = "bold" },
		htmlH4 = { fg = embark.yellow, style = "bold" },
		htmlH5 = { fg = embark.purple, style = "bold" },
		markdownH1 = { fg = embark.cyan, style = "bold" },
		markdownH2 = { fg = embark.red, style = "bold" },
		markdownH3 = { fg = embark.green, style = "bold" },
		markdownH1Delimiter = { fg = embark.cyan },
		markdownH2Delimiter = { fg = embark.red },
		markdownH3Delimiter = { fg = embark.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.embark_italic_comments == true then
		syntax.Comment = { fg = embark.comments, bg = embark.none, style = "italic" } -- italic comments
	else
		syntax.Comment = { fg = embark.comments } -- normal comments
	end

	-- Italic Keywords
	if vim.g.embark_italic_keywords == true then
		syntax.Conditional = { fg = embark.purple, bg = embark.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword = { fg = embark.purple, bg = embark.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = embark.purple, bg = embark.none, style = "italic" } -- italic any other keyword
	else
		syntax.Conditional = { fg = embark.purple } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword = { fg = embark.purple } -- normal for, do, while, etc.
		syntax.Repeat = { fg = embark.purple } -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.embark_italic_functions == true then
		syntax.Function = { fg = embark.blue, bg = embark.none, style = "italic" } -- italic funtion names
	else
		syntax.Function = { fg = embark.blue } -- normal function names
	end

	if vim.g.embark_italic_variables == true then
		Identifier = { fg = embark.gray, bg = embark.none, style = "italic" } -- any variable name
	else
		Identifier = { fg = embark.gray } -- any variable name
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = embark.fg, bg = embark.float }, -- normal text and background color
		ColorColumn = { fg = embark.none, bg = embark.active }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = embark.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = embark.cursor, bg = embark.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = embark.cursor, bg = embark.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = embark.blue, bg = embark.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = embark.green, bg = embark.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = embark.orange, bg = embark.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = embark.red, bg = embark.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = embark.yellow, bg = embark.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = embark.disabled },
		ErrorMsg = { fg = embark.none },
		Folded = { fg = embark.disabled, bg = embark.none, style = "italic" },
		FoldColumn = { fg = embark.blue },
		IncSearch = { fg = embark.highlight, bg = embark.white, style = "reverse" },
		LineNr = { fg = embark.line_numbers },
		CursorLineNr = { fg = embark.accent },
		MatchParen = { fg = embark.yellow, bg = embark.none, style = "bold" },
		ModeMsg = { fg = embark.accent },
		MoreMsg = { fg = embark.accent },
		NonText = { fg = embark.disabled },
		Pmenu = { fg = embark.text, bg = embark.contrast },
		PmenuSel = { fg = embark.accent, bg = embark.active },
		PmenuSbar = { fg = embark.text, bg = embark.contrast },
		PmenuThumb = { fg = embark.fg, bg = embark.accent },
		Question = { fg = embark.green },
		QuickFixLine = { fg = embark.highlight, bg = embark.white, style = "reverse" },
		qfLineNr = { fg = embark.highlight, bg = embark.white, style = "reverse" },
		Search = { fg = embark.highlight, bg = embark.white, style = "reverse" },
		SpecialKey = { fg = embark.purple },
		SpellBad = { fg = embark.red, bg = embark.none, style = "italic,undercurl" },
		SpellCap = { fg = embark.blue, bg = embark.none, style = "italic,undercurl" },
		SpellLocal = { fg = embark.cyan, bg = embark.none, style = "italic,undercurl" },
		SpellRare = { fg = embark.purple, bg = embark.none, style = "italic,undercurl" },
		StatusLine = { fg = embark.fg, bg = embark.contrast },
		StatusLineNC = { fg = embark.text, bg = embark.disabled },
		StatusLineTerm = { fg = embark.fg, bg = embark.contrast },
		StatusLineTermNC = { fg = embark.text, bg = embark.disabled },
		TabLineFill = { fg = embark.fg },
		TablineSel = { fg = embark.bg, bg = embark.accent },
		Tabline = { fg = embark.fg },
		Title = { fg = embark.green, bg = embark.none, style = "bold" },
		Visual = { fg = embark.none, bg = embark.selection },
		VisualNOS = { fg = embark.none, bg = embark.selection },
		WarningMsg = { fg = embark.yellow },
		WildMenu = { fg = embark.orange, bg = embark.none, style = "bold" },
		CursorColumn = { fg = embark.none, bg = embark.active },
		CursorLine = { fg = embark.none, bg = embark.none },
		ToolbarLine = { fg = embark.fg, bg = embark.bg_alt },
		ToolbarButton = { fg = embark.fg, bg = embark.none, style = "bold" },
		NormalMode = { fg = embark.accent, bg = embark.none, style = "reverse" },
		InsertMode = { fg = embark.green, bg = embark.none, style = "reverse" },
		ReplacelMode = { fg = embark.red, bg = embark.none, style = "reverse" },
		VisualMode = { fg = embark.purple, bg = embark.none, style = "reverse" },
		CommandMode = { fg = embark.gray, bg = embark.none, style = "reverse" },
		Warnings = { fg = embark.yellow },

		healthError = { fg = embark.error },
		healthSuccess = { fg = embark.green },
		healthWarning = { fg = embark.yellow },

		-- Dashboard
		DashboardShortCut = { fg = embark.blue },
		DashboardHeader = { fg = embark.red },
		DashboardCenter = { fg = embark.cyan },
		DashboardFooter = { fg = embark.green, style = "italic" },
	}

	-- Options:

	--Set transparent background
	if vim.g.embark_disable_background == true then
		editor.Normal = { fg = embark.fg, bg = embark.none } -- normal text and background color
		editor.SignColumn = { fg = embark.fg, bg = embark.none }
	else
		editor.Normal = { fg = embark.fg, bg = embark.bg } -- normal text and background color
		editor.SignColumn = { fg = embark.fg, bg = embark.bg }
	end

	-- Remove window split borders
	if vim.g.embark_borders == true then
		editor.VertSplit = { fg = embark.border }
	else
		editor.VertSplit = { fg = embark.bg }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = embark.black
	vim.g.terminal_color_1 = embark.red
	vim.g.terminal_color_2 = embark.green
	vim.g.terminal_color_3 = embark.yellow
	vim.g.terminal_color_4 = embark.blue
	vim.g.terminal_color_5 = embark.purple
	vim.g.terminal_color_6 = embark.cyan
	vim.g.terminal_color_7 = embark.white
	vim.g.terminal_color_8 = embark.gray
	vim.g.terminal_color_9 = embark.red
	vim.g.terminal_color_10 = embark.green
	vim.g.terminal_color_11 = embark.yellow
	vim.g.terminal_color_12 = embark.blue
	vim.g.terminal_color_13 = embark.purple
	vim.g.terminal_color_14 = embark.cyan
	vim.g.terminal_color_15 = embark.white
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = embark.red }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		TSAttribute = { fg = embark.yellow }, -- (unstable) TODO: docs
		TSBoolean = { fg = embark.orange }, -- For booleans.
		TSCharacter = { fg = embark.orange }, -- For characters.
		TSConstructor = { fg = embark.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = embark.yellow }, -- For constants
		TSConstBuiltin = { fg = embark.blue }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = embark.blue }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = embark.error }, -- For syntax/parser errors.
		TSException = { fg = embark.yellow }, -- For exception related keywords.
		TSField = { fg = embark.gray }, -- For fields.
		TSFloat = { fg = embark.red }, -- For floats.
		TSFuncMacro = { fg = embark.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = embark.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = embark.red }, -- For labels: `label:` in C and `:label:` in Lua.
		TSNamespace = { fg = embark.yellow }, -- For identifiers referring to modules and namespaces.
		--TSNone =                    { },    -- TODO: docs
		TSNumber = { fg = embark.orange }, -- For all numbers
		TSOperator = { fg = embark.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = embark.paleblue }, -- For parameters of a function.
		TSParameterReference = { fg = embark.paleblue }, -- For references to parameters of a function.
		TSProperty = { fg = embark.paleblue }, -- Same as `TSField`.
		TSPunctDelimiter = { fg = embark.cyan }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = embark.cyan }, -- For brackets and parens.
		TSPunctSpecial = { fg = embark.cyan }, -- For special punctutation that does not fall in the catagories before.
		TSString = { fg = embark.green }, -- For strings.
		TSStringRegex = { fg = embark.blue }, -- For regexes.
		TSStringEscape = { fg = embark.disabled }, -- For escape characters within a string.
		TSSymbol = { fg = embark.yellow }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = embark.purple }, -- For types.
		TSTypeBuiltin = { fg = embark.purple }, -- For builtin types.
		TSTag = { fg = embark.red }, -- Tags like html tag names.
		TSTagDelimiter = { fg = embark.yellow }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = embark.text }, -- For strings considered text in a markup language.
		TSTextReference = { fg = embark.yellow }, -- FIXME
		TSEmphasis = { fg = embark.paleblue }, -- For text to be represented with emphasis.
		TSUnderline = { fg = embark.fg, bg = embark.none, style = "underline" }, -- For text to be represented with an underline.
		TSStrike = {}, -- For strikethrough text.
		TSTitle = { fg = embark.paleblue, bg = embark.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = embark.fg }, -- Literal text.
		TSURI = { fg = embark.link }, -- Any URI like a link or email.
	}

	-- Options:

	-- Italic comments
	if vim.g.embark_italic_comments == true then
		treesitter.TSComment = { fg = embark.comments, bg = embark.none, style = "italic" } -- For comment blocks.
	else
		treesitter.TSComment = { fg = embark.comments } -- For comment blocks.
	end

	if vim.g.embark_italic_keywords == true then
		treesitter.TSConditional = { fg = embark.purple, style = "italic" } -- For keywords related to conditionnals.
		treesitter.TSKeyword = { fg = embark.purple, style = "italic" } -- For keywords that don't fall in previous categories.
		treesitter.TSRepeat = { fg = embark.purple, style = "italic" } -- For keywords related to loops.
		treesitter.TSKeywordFunction = { fg = embark.purple, style = "italic" } -- For keywords used to define a fuction.
	else
		treesitter.TSConditional = { fg = embark.purple } -- For keywords related to conditionnals.
		treesitter.TSKeyword = { fg = embark.purple } -- For keywords that don't fall in previous categories.
		treesitter.TSRepeat = { fg = embark.purple } -- For keywords related to loops.
		treesitter.TSKeywordFunction = { fg = embark.purple } -- For keywords used to define a fuction.
	end

	if vim.g.embark_italic_functions == true then
		treesitter.TSFunction = { fg = embark.blue, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = embark.blue, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = embark.cyan, style = "italic" } -- For builtin functions: `table.insert` in Lua.
	else
		treesitter.TSFunction = { fg = embark.blue } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = embark.blue } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = embark.cyan } -- For builtin functions: `table.insert` in Lua.
	end

	if vim.g.embark_italic_variables == true then
		treesitter.TSVariable = { fg = embark.gray, style = "italic" } -- Any variable name that does not have another highlight.
		treesitter.TSVariableBuiltin = { fg = embark.gray, style = "italic" } -- Variable names that are defined by the languages, like `this` or `self`.
	else
		treesitter.TSVariable = { fg = embark.gray } -- Any variable name that does not have another highlight.
		treesitter.TSVariableBuiltin = { fg = embark.gray } -- Variable names that are defined by the languages, like `this` or `self`.
	end

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = embark.error }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = embark.error }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = embark.error }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = embark.error }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = embark.error }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = embark.yellow }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = embark.yellow }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = embark.yellow }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = embark.yellow }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = embark.yellow }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = embark.paleblue }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = embark.paleblue }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = embark.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = embark.paleblue }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = embark.paleblue }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = embark.purple }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = embark.purple }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = embark.purple }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = embark.purple }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = embark.paleblue }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = embark.accent, bg = embark.highlight }, -- used for highlighting "text" references
		LspReferenceRead = { fg = embark.accent, bg = embark.highlight }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = embark.accent, bg = embark.highlight }, -- used for highlighting "write" references
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = embark.text },
		LspTroubleCount = { fg = embark.purple, bg = embark.active },
		LspTroubleNormal = { fg = embark.fg, bg = embark.sidebar },

		-- Diff
		diffAdded = { fg = embark.green },
		diffRemoved = { fg = embark.red },
		diffChanged = { fg = embark.yellow },
		diffOldFile = { fg = embark.yelow },
		diffNewFile = { fg = embark.orange },
		diffFile = { fg = embark.blue },
		diffLine = { fg = embark.comments },
		diffIndexLine = { fg = embark.purple },

		-- Neogit
		NeogitBranch = { fg = embark.paleblue },
		NeogitRemote = { fg = embark.purple },
		NeogitHunkHeader = { fg = embark.fg, bg = embark.highlight },
		NeogitHunkHeaderHighlight = { fg = embark.blue, bg = embark.contrast },
		NeogitDiffContextHighlight = { fg = embark.text, bg = embark.contrast },
		NeogitDiffDeleteHighlight = { fg = embark.red },
		NeogitDiffAddHighlight = { fg = embark.green },

		-- GitGutter
		GitGutterAdd = { fg = embark.green }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = embark.yellow }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = embark.red }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = embark.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = embark.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = embark.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = embark.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = embark.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = embark.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = embark.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = embark.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = embark.red }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = embark.cyan },
		TelescopeResultsBorder = { fg = embark.purple },
		TelescopePreviewBorder = { fg = embark.green },
		TelescopeSelectionCaret = { fg = embark.purple },
		TelescopeSelection = { fg = embark.purple },
		TelescopeMatching = { fg = embark.cyan },
		TelescopeNormal = { fg = embark.fg, bg = embark.float },

		-- NvimTree
		NvimTreeRootFolder = { fg = embark.blue, style = "bold" },
		NvimTreeGitDirty = { fg = embark.yellow },
		NvimTreeGitNew = { fg = embark.green },
		NvimTreeImageFile = { fg = embark.yellow },
		NvimTreeExecFile = { fg = embark.green },
		NvimTreeSpecialFile = { fg = embark.purple, style = "underline" },
		NvimTreeFolderName = { fg = embark.paleblue },
		NvimTreeEmptyFolderName = { fg = embark.disabled },
		NvimTreeFolderIcon = { fg = embark.accent },
		NvimTreeIndentMarker = { fg = embark.disabled },
		LspDiagnosticsError = { fg = embark.error },
		LspDiagnosticsWarning = { fg = embark.yellow },
		LspDiagnosticsInformation = { fg = embark.paleblue },
		LspDiagnosticsHint = { fg = embark.purple },

		-- WhichKey
		WhichKey = { fg = embark.accent, style = "bold" },
		WhichKeyGroup = { fg = embark.text },
		WhichKeyDesc = { fg = embark.blue, style = "italic" },
		WhichKeySeperator = { fg = embark.fg },
		WhichKeyFloating = { bg = embark.float },
		WhichKeyFloat = { bg = embark.float },

		-- LspSaga
		DiagnosticError = { fg = embark.error },
		DiagnosticWarning = { fg = embark.yellow },
		DiagnosticInformation = { fg = embark.paleblue },
		DiagnosticHint = { fg = embark.purple },
		DiagnosticTruncateLine = { fg = embark.fg },
		LspFloatWinNormal = { bg = embark.contrast },
		LspFloatWinBorder = { fg = embark.purple },
		LspSagaBorderTitle = { fg = embark.cyan },
		LspSagaHoverBorder = { fg = embark.paleblue },
		LspSagaRenameBorder = { fg = embark.green },
		LspSagaDefPreviewBorder = { fg = embark.green },
		LspSagaCodeActionBorder = { fg = embark.blue },
		LspSagaFinderSelection = { fg = embark.green },
		LspSagaCodeActionTitle = { fg = embark.paleblue },
		LspSagaCodeActionContent = { fg = embark.purple },
		LspSagaSignatureHelpBorder = { fg = embark.pink },
		ReferencesCount = { fg = embark.purple },
		DefinitionCount = { fg = embark.purple },
		DefinitionIcon = { fg = embark.blue },
		ReferencesIcon = { fg = embark.blue },
		TargetWord = { fg = embark.cyan },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = embark.accent },
		BufferLineFill = { bg = embark.bg_alt },

		-- Sneak
		Sneak = { fg = embark.bg, bg = embark.accent },
		SneakScope = { bg = embark.selection },

		-- Indent Blankline
		IndentBlanklineChar = { fg = embark.highlight },
		IndentBlanklineContextChar = { fg = embark.disabled },

		-- Nvim dap
		DapBreakpoint = { fg = embark.red },
		DapStopped = { fg = embark.green },
	}

	-- Options:

	-- Disable nvim-tree background
	if vim.g.embark_disable_background == true then
		plugins.NvimTreeNormal = { fg = embark.fg, bg = embark.none }
	else
		plugins.NvimTreeNormal = { fg = embark.fg, bg = embark.sidebar }
	end

	return plugins
end

return theme
