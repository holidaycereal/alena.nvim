-- colors/alena.lua
-- vim: noet nowrap

-- Setup
vim.opt.background = "light"
vim.cmd("hi clear")
if vim.fn.exists("syntax_on")
	then vim.cmd("syntax reset")
end

-- Config tables
local config = {
	bg = "#f6f6f6",
	fg = "#323438",

	grey_1 = "#ececec",
	grey_2 = "#e1e1e1",
	grey_3 = "#bcbfc1",
	grey_4 = "#a9abad",
	grey_5 = "#888a8c",
	grey_6 = "#54585c",

	light_red = "#ffc0b9",
	light_yellow = "#ffeca4",
	light_green = "#b3f6c0",
	light_cyan = "#a2efef",
	light_blue = "#d8e8fc",

	red = "#bc0000",
	yellow = "#f5c71a",
	green = "#4f790d",
	cyan = "#007474",
	blue = "#005490",
	magenta = "#a626a4",
	orange = "#b75501",

	highlight = {
		text = { fg = "fg" },
		non_text = { fg = "grey_4" },

		-- Syntax
		keywords = { fg = "blue" },
		directives = { fg = "red" },
		types = { fg = "magenta" },
		constants = { fg = "orange" },
		values = { fg = "orange" },
		strings = { fg = "green" },
		variables = { fg = "fg" },
		variables_builtin = { fg = "fg", italic = true },
		functions = { fg = "fg" },
		operators = { fg = "fg" },
		punctuation = { fg = "fg" },
		comments = { fg = "grey_5" },
		annotations = { fg = "red" },

		markup_bold = { bold = true },
		markup_italic = { italic = true },
		markup_underline = { underline = true },
		markup_list = { fg = "blue" },
		markup_headings = { fg = "blue", bold = true },
		markup_raw = { fg = "green" },
		markup_links = { underline = true },
		xml_attributes = { fg = "fg" },
		xml_tags = { fg = "blue" },
		xml_delimiters = { fg = "grey_4" },

		-- User interface
		bad = { fg = "red", bold = true },
		warning = { fg = "orange", bold = true },
		ok = { fg = "green", bold = true },
		other = { fg = "cyan", bold = true },
		message = {},
		diff_add = { bg = "light_green" },
		diff_change = { bg = "light_cyan" },
		diff_remove = { bg = "light_red" },
		folds = { fg = "grey_5", bg = "grey_1" },
		visual_mode = { bg = "light_blue" },
		search_results = { bg = "light_yellow" },
		search_current = { bg = "yellow" },
		alt_bg = { bg = "grey_1" },
		line_nr = { fg = "grey_4", bg = "grey_1" },
		cursor_line_nr = { fg = "grey_5", bg = "grey_2" },
		active = { reverse = true },
		inactive = { fg = "grey_6", bg = "grey_2" },
		p_menu = { fg = "grey_4", bg = "grey_6" },
		p_menu_sel = { fg = "bg", bg = "grey_5" },
	}
}

-- Map the custom colors to the custom groups
for group, property in pairs(config.highlight) do
	local hl = {}
	for key, value in pairs(property) do
		hl[key] = config[value] or value
	end
	vim.api.nvim_set_hl(0, group, hl)
end

-- Set background color
vim.api.nvim_set_hl(0, "Normal", { fg = config.fg, bg = config.bg })

-- Mappings to real groups
local mappings = {
	text = { "@property", "NormalNC", "NormalFloat", "FloatBorder", "Special", "SpecialChar", "FloatTitle", "FloatFooter", "@string.css", "@number.css" },
	non_text = { "@conceal", "Conceal", "Ignore", "TabLineFill",  "NonText", "SpecialKey", "Whitespace", "FoldColumn", "SignColumn", "CursorLineFold", "CursorLineSign", "EndOfBuffer" },

	-- Syntax
	keywords = { "Statement", "Conditional", "Repeat", "Keyword", "Exception", "@keyword", "@keyword.coroutine", "@keyword.function", "@keyword.operator", "@keyword.type", "@keyword.modifier", "@keyword.repeat", "@keyword.return", "@keyword.debug", "@keyword.exception", "@keyword.conditional", "@keyword.conditional.ternary", "@property.css", "@function.macro.commonlisp", "@operator.haskell" },
	directives = { "PreProc", "Include", "Define", "Macro", "PreCondit", "@keyword.directive", "@keyword.directive.define", "@keyword.import" },
	types = { "Type", "StorageClass", "Structure", "Typedef", "@type", "@type.builtin", "@type.definition", "@module", "@module.builtin", "@tag.css" },
	values = { "Number", "Float", "Boolean", "@constant.builtin", "@boolean", "@number", "@number.float" },
	constants = { "Constant", "@constant", "@constant.macro" },
	strings = { "String", "Character", "@string", "@character", "@string.documentation", "@string.regexp", "@string.escape", "@string.special", "@string.special.symbol", "@string.special.path", "@string.special.url" },
	variables = { "Identifier", "@variable", "@variable.parameter", "@variable.member" },
	variables_builtin = { "@variable.builtin", "@variable.parameter.builtin" },
	functions = { "Function", "@function", "@function.call", "@function.macro", "@function.method", "@function.method.call", "@function.builtin", "@constructor" },
	operators = { "Operator", "@operator" },
	punctuation = { "Delimiter", "@punctuation", "@punctuation.delimiter", "@punctuation.bracket", "@punctuation.special" },
	comments = { "Comment", "SpecialComment", "@comment", "@comment.documentation", "DiagnosticUnnecessary" },
	annotations = { "@attribute", "@attribute.builtin", "Label", "@label" },

	markup_bold = { "@markup.strong" },
	markup_italic = { "@markup.italic" },
	markup_strikethrough = { "@markup.strikethrough" },
	markup_underline = { "Underlined", "DiffText", "@markup.underline" },
	markup_list = { "@markup.list", "@markup.list.checked", "@markup.list.unchecked" },
	markup_headings = { "@markup.heading", "@markup.heading.1", "@markup.heading.2", "@markup.heading.3", "@markup.heading.4", "@markup.heading.5", "@markup.heading.6", },
	markup_raw = { "@markup.quote", "@markup.math", "@markup.raw", "@markup.raw.block" },
	markup_links = { "@markup.link", "@markup.link.label", "@markup.link.url" },
	xml_attributes = { "@tag.attribute" },
	xml_tags = { "@tag", "@tag.builtin" },
	xml_delimiters = { "@tag.delimiter", "@tag.delimiter.html" },

	-- User interface
	bad = { "Error", "DiagnosticError", "DiagnosticVirtualTextError", "DiagnosticFloatingError", "DiagnosticSignError", "ErrorMsg", "@comment.error", "@comment.warning" },
	warning = { "DiagnosticWarn", "DiagnosticVirtualTextWarn", "DiagnosticFloatingWarn", "DiagnosticSignWarn", "WarningMsg" },
	ok = { "DiagnosticOk", "DiagnosticVirtualTextOk", "DiagnosticFloatingOk", "DiagnosticSignOk" },
	other = { "Debug", "Todo", "Directory", "Tag", "@comment.todo", "@comment.note", "DiagnosticInfo", "DiagnosticHint" },
	message = { "ModeMsg", "MsgArea", "MoreMsg", "Question" },
	diff_add = { "DiffAdd", "Added" },
	diff_change = { "DiffChange", "Changed" },
	diff_remove = { "DiffDelete", "Removed" },
	folds = { "Folded" },
	visual_mode = { "Visual", "VisualNOS" },
	search_results = { "Search", "Substitute" },
	search_current = { "CurSearch", "IncSearch", "MatchParen", "QuickFixLine", "SnippetTabstop" },
	alt_bg = { "CursorLine", "CursorColumn", "ColorColumn" },
	line_nr = { "LineNr", "LineNrAbove", "LineNrBelow" },
	cursor_line_nr = { "CursorLineNr" },
	active = { "StatusLine", "TabLineSel", "WinBar"},
	inactive = { "StatusLineNC", "TabLine", "WinBarNC" },
	p_menu = { "Pmenu", "PmenuKind", "PmenuExtra", "WildMenu" },
	p_menu_sel = { "PmenuSel", "PmenuKindSel", "PmenuExtraSel", "PmenuThumb" },
}

-- Finally, apply the mappings
for custom_group, target_group in pairs(mappings) do
	for _, target_group in ipairs(target_group) do
		vim.api.nvim_set_hl(0, target_group, { link = custom_group })
	end
end

vim.g.colors_name = "alena"
