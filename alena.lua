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
	fg = "#000000",

	grey_1 = "#eaeaea",
	grey_2 = "#d5d5d5",
	grey_3 = "#bcbcbc",
	grey_4 = "#a9a9a9",
	grey_5 = "#808080",
	grey_6 = "#545454",

	light_red = "#ffc0b9",
	light_yellow = "#ffeca4",
	light_green = "#b3f6c0",
	light_cyan = "#a2efef",
	light_blue = "#d8e8fc",

	red = "#ac0010",
	yellow = "#f5c71a",
	green = "#2e742a",
	cyan = "#007474",
	blue = "#0d47a1",
	magenta = "#8b008b",
	orange = "#cc5400",
	brown = "#80442b",
	
	highlight = {
		text = {},
		-- Syntax
		keywords = { fg = "blue" },
		types = { fg = "magenta" },
		constants = { fg = "brown" },
		values = { fg = "orange" },
		strings = { fg = "green" },
		variables = {},
		functions = {},
		operators = {},
		punctuation = {},
		comments = { fg = "grey_5" },
		annotations = { underline = true },
		markup_bold = { bold = true },
		markup_italic = { italic = true },
		markup_underline = { underline = true },
		markup_list = { fg = "grey_5" },
		markup_headings = { bold = true },
		markup_raw = { fg = "blue" },
		markup_links = { underline = true },
		xml_attributes = {},
		xml_tags = { fg = "blue" },
		xml_delimiters = { fg = "grey_5" },

		-- User interface
		invisible = { fg = "bg" },
		non_text = { fg = "grey_4" },
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

-- Mappings to real groups
local mappings = {
	text = { "Normal", "@property", "@string.regexp", "@string.escape", "@string.special", "@string.special.symbol", "@string.special.path", "@string.special.url", "NormalNC", "NormalFloat", "FloatBorder", "Special", "SpecialChar", "FloatTitle", "FloatFooter" },
	invisible = { "Conceal", "Ignore", "TabLineFill" },
	-- Syntax
	keywords = { "Statement", "Conditional", "Repeat", "Label", "Keyword", "Exception", "PreProc", "Include", "Define", "Macro", "PreCondit", "@keyword", "@keyword.coroutine", "@keyword.function", "@keyword.operator", "@keyword.import", "@keyword.type", "@keyword.modifier", "@keyword.repeat", "@keyword.return", "@keyword.debug", "@keyword.exception", "@keyword.conditional", "@keyword.conditional.ternary", "@keyword.directive", "@keyword.directive.define" },
	types = { "Type", "StorageClass", "Structure", "Typedef", "@type", "@type.builtin", "@type.definition", "@module", "@module.builtin" },
	constants = { "Constant", "@constant", "@constant.macro" },
	values = { "Number", "Float", "Boolean", "Character", "@constant.builtin", "@boolean", "@number", "@number.float", "@character" },
	strings = { "String", "@string", "@string.documentation" },
	variables = { "Identifier", "@variable", "@variable.parameter", "@variable.parameter.builtin", "@variable.member" },
	functions = { "Function", "@function", "@function.builtin", "@function.call", "@function.macro", "@function.method", "@function.method.call", "@constructor" },
	operators = { "Operator", "@operator" },
	punctuation = { "Delimiter", "@punctuation", "@punctuation.delimiter", "@punctuation.bracket", "@punctuation.special" },
	comments = { "Comment", "SpecialComment", "@comment", "@comment.documentation", "DiagnosticUnnecessary" },
	annotations = { "@attribute", "@attribute.builtin", "@label" },
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
	non_text = { "NonText", "SpecialKey", "Whitespace", "FoldColumn", "SignColumn", "CursorLineFold", "CursorLineSign", "EndOfBuffer" },
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
