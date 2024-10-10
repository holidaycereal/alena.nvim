-- colors/alena.lua

vim.opt.background = "light"

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

local hl = {
  bg =       '#f6f6f6',
  fg =       '#000000',
  grey_1 =   '#545454',
  grey_2 =   '#808080',
  grey_3 =   '#a9a9a9',
  grey_4 =   '#bcbcbc',
  grey_5 =   '#d5d5d5',
  d_white =  '#eaeaea',
  l_red =    '#ffc0b9',
  yellow =   '#f5c71a',
  l_yellow = '#ffeca4',
  l_green =  '#b3f6c0',
  cyan =     '#a2efef',
  l_blue =   '#d8e8fc',
  blue =     '#0d47a1',
  magenta =  '#8b008b',
  red =      '#ac0010',
  orange =   '#cb440b',
  green =    '#2e742a',
  teal =     '#007474',
}

-- keeping it under 80 columns ^.^
local function set_hl(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- PROGRAMMING
--
-- variables and functions are black because they're important
set_hl('Identifier',                  { fg = hl.fg })
set_hl('@variable',                   { fg = hl.fg })
set_hl('@variable.builtin',           { fg = hl.fg })
set_hl('@variable.parameter',         { fg = hl.fg })
set_hl('@variable.parameter.builtin', { fg = hl.fg })
set_hl('@variable.member',            { fg = hl.fg })
set_hl('Function',                    { fg = hl.fg })
set_hl('@function',                   { fg = hl.fg })
set_hl('@function.builtin',           { fg = hl.fg })
set_hl('@function.call',              { fg = hl.fg })
set_hl('@function.macro',             { fg = hl.fg })
set_hl('@function.method',            { fg = hl.fg })
set_hl('@function.method.call',       { fg = hl.fg })
set_hl('@constructor',                { fg = hl.fg })
-- keywords are blue because they're special
set_hl('Statement',                    { fg = hl.blue })
set_hl('Conditional',                  { fg = hl.blue })
set_hl('Repeat',                       { fg = hl.blue })
set_hl('Label',                        { fg = hl.blue })
set_hl('Keyword',                      { fg = hl.blue })
set_hl('Exception',                    { fg = hl.blue })
set_hl('PreProc',                      { fg = hl.blue })
set_hl('Include',                      { fg = hl.blue })
set_hl('Define',                       { fg = hl.blue })
set_hl('Macro',                        { fg = hl.blue })
set_hl('PreCondit',                    { fg = hl.blue })
set_hl('@keyword',                     { fg = hl.blue })
set_hl('@keyword.coroutine',           { fg = hl.blue })
set_hl('@keyword.function',            { fg = hl.blue })
set_hl('@keyword.operator',            { fg = hl.blue })
set_hl('@keyword.import',              { fg = hl.blue })
set_hl('@keyword.type',                { fg = hl.blue })
set_hl('@keyword.modifier',            { fg = hl.blue })
set_hl('@keyword.repeat',              { fg = hl.blue })
set_hl('@keyword.return',              { fg = hl.blue })
set_hl('@keyword.debug',               { fg = hl.blue })
set_hl('@keyword.exception',           { fg = hl.blue })
set_hl('@keyword.conditional',         { fg = hl.blue })
set_hl('@keyword.conditional.ternary', { fg = hl.blue })
set_hl('@keyword.directive',           { fg = hl.blue })
set_hl('@keyword.directive.define',    { fg = hl.blue })
-- modules and types are magenta
set_hl('@module',          { fg = hl.magenta })
set_hl('@module.builtin',  { fg = hl.magenta })
set_hl('Type',             { fg = hl.magenta })
set_hl('Typedef',          { fg = hl.magenta })
set_hl('StorageClass',     { fg = hl.magenta })
set_hl('Structure',        { fg = hl.magenta })
set_hl('@type',            { fg = hl.magenta })
set_hl('@type.builtin',    { fg = hl.magenta })
set_hl('@type.definition', { fg = hl.magenta })
-- the colour gets warmer as we get closer to the data
set_hl('Constant',          { fg = hl.red })
set_hl('@constant',         { fg = hl.red })
set_hl('@constant.macro',   { fg = hl.red })
set_hl('@constant.builtin', { fg = hl.orange })
set_hl('Number',            { fg = hl.orange })
set_hl('@number',           { fg = hl.orange })
set_hl('@number.float',     { fg = hl.orange })
set_hl('Boolean',           { fg = hl.orange })
set_hl('@boolean',          { fg = hl.orange })
-- strings are green because it feels right
set_hl('String',                 { fg = hl.green })
set_hl('@string',                { fg = hl.green })
set_hl('@string.documentation',  { fg = hl.green })
-- or black if the character will print something other than itself
set_hl('@string.regexp',         { fg = hl.fg })
set_hl('@string.escape',         { fg = hl.fg })
set_hl('@string.special',        { fg = hl.fg })
set_hl('@string.special.symbol', { fg = hl.fg })
set_hl('@string.special.path',   { fg = hl.fg })
set_hl('@string.special.url',    { fg = hl.fg })
set_hl('Character',              { fg = hl.fg })
set_hl('@character',             { fg = hl.fg })
-- symbols are black
set_hl('Operator',               { fg = hl.fg })
set_hl('@operator',              { fg = hl.fg })
set_hl('Delimiter',              { fg = hl.fg })
set_hl('@punctuation.delimiter', { fg = hl.fg })
set_hl('@punctuation.bracket',   { fg = hl.fg })
set_hl('@punctuation.special',   { fg = hl.fg })
set_hl('Special',                { fg = hl.fg })
set_hl('SpecialChar',            { fg = hl.fg })
set_hl('@character.special',     { fg = hl.fg })
-- comments are grey
set_hl('Comment',                { fg = hl.grey_2 })
set_hl('SpecialComment',         { fg = hl.grey_2 })
set_hl('@comment',               { fg = hl.grey_2 })
set_hl('@comment.documentation', { fg = hl.grey_2 })
-- colourful special comments
set_hl('Error',                  { fg = hl.bg, bg = hl.red,  bold = true })
set_hl('Todo',                   { fg = hl.bg, bg = hl.teal, bold = true })
set_hl('@comment.error',         { fg = hl.bg, bg = hl.red,  bold = true })
set_hl('@comment.warning',       { fg = hl.bg, bg = hl.red,  bold = true })
set_hl('@comment.todo',          { fg = hl.bg, bg = hl.teal, bold = true })
set_hl('@comment.note',          { fg = hl.bg, bg = hl.teal, bold = true })
set_hl('Debug',                  { fg = hl.teal })
-- these are for annotations and gotos and stuff idk
set_hl('@attribute',         { underline = true })
set_hl('@attribute.builtin', { underline = true })
set_hl('@label',             { underline = true })

-- MARKUP
--
-- font styles
set_hl('@markup.strong',         { bold = true })
set_hl('@markup.italic',         { italic = true })
set_hl('@markup.strikethrough',  { strikethrough = true })
set_hl('@markup.underline',      { underline = true })
set_hl('@markup.heading',        { bold = true })
set_hl('@markup.heading.1',      { bold = true })
set_hl('@markup.heading.2',      { bold = true })
set_hl('@markup.heading.3',      { bold = true })
set_hl('@markup.heading.4',      { bold = true })
set_hl('@markup.heading.5',      { bold = true })
set_hl('@markup.heading.6',      { bold = true })
set_hl('@markup.quote',          { fg = hl.blue })
set_hl('@markup.math',           { fg = hl.blue })
set_hl('@markup.link',           { fg = teal, underline = true })
set_hl('@markup.link.label',     { fg = teal, underline = true })
set_hl('@markup.link.url',       { fg = teal, underline = true })
set_hl('@markup.raw',            { fg = hl.blue })
set_hl('@markup.raw.block',      { fg = hl.blue })
set_hl('@markup.list',           { fg = hl.grey_1 })
set_hl('@markup.list.checked',   { fg = hl.grey_3 })
set_hl('@markup.list.unchecked', { fg = hl.grey_1 })
-- only highlight properties in markup languages
set_hl('@property',      { fg = hl.fg })
set_hl('@property.css',  { fg = hl.blue })
set_hl('@property.yaml', { fg = hl.blue })
set_hl('@property.toml', { fg = hl.blue })
set_hl('@property.json', { fg = hl.blue })
-- XML-style tags
set_hl('@tag',                { fg = hl.blue })
set_hl('@tag.builtin',        { fg = hl.blue })
set_hl('@tag.attribute',      { fg = hl.fg })
set_hl('@tag.delimiter',      { fg = hl.grey_2 })
set_hl('@tag.delimiter.html', { fg = hl.grey_2 })

-- USER INTERFACE
--
set_hl('Normal',       { fg = hl.fg, bg = hl.bg })
set_hl('Ignore',       { fg = hl.fg, bg = hl.bg })
set_hl('Visual',       { bg = hl.l_blue })
set_hl('VisualNOS',    { bg = hl.l_blue })
set_hl('Conceal',      { fg = hl.bg, bg = hl.bg })
set_hl('Whitespace',   { fg = hl.grey_4 })
set_hl('Search',       { bg = hl.l_yellow })
set_hl('CurSearch',    { bg = hl.yellow })
set_hl('Substitute',   { bg = hl.l_yellow })
set_hl('IncSearch',    { bg = hl.yellow })
set_hl('MatchParen',   { bg = hl.yellow })
set_hl('CursorLine',   { bg = hl.d_white })
set_hl('CursorColumn', { bg = hl.d_white })
set_hl('ColorColumn',  { bg = hl.d_white })
set_hl('Directory',    { fg = hl.blue, bold = true }) -- matches dircolors
set_hl('Folded',       { fg = hl.grey_2, bg = hl.d_white })
set_hl('LineNr',       { fg = hl.grey_3, bg = hl.d_white })
set_hl('LineNrAbove',  { fg = hl.grey_3, bg = hl.d_white })
set_hl('LineNrBelow',  { fg = hl.grey_3, bg = hl.d_white })
set_hl('CursorLineNr', { fg = hl.grey_2, bg = hl.grey_5 })
set_hl('MoreMsg',      { fg = hl.fg })
set_hl('ModeMsg',      { fg = hl.fg })
set_hl('Question',     { fg = hl.fg })
set_hl('ErrorMsg',     { fg = hl.red,    bold = true })
set_hl('WarningMsg',   { fg = hl.orange, bold = true })
set_hl('FloatTitle',   { bold = true })
set_hl('FloatFooter',  { bold = true })
set_hl('Title',        { bold = true })
-- UI widgets
set_hl('TabLine',       { fg = hl.grey_1, bg = hl.grey_5 })
set_hl('TabLineFill',   { bg = hl.bg })
set_hl('TabLineSel',    { fg = hl.bg,     bg = hl.fg })
set_hl('StatusLine',    { fg = hl.bg,     bg = hl.fg })
set_hl('StatusLineNC',  { fg = hl.grey_1, bg = hl.grey_5 })
set_hl('Pmenu',         { fg = hl.grey_3, bg = hl.grey_1 })
set_hl('PmenuSel',      { fg = hl.bg,     bg = hl.grey_2 })
set_hl('PmenuKind',     { fg = hl.grey_3, bg = hl.grey_1, italic = true })
set_hl('PmenuKindSel',  { fg = hl.bg,     bg = hl.grey_2, italic = true })
set_hl('PmenuExtra',    { fg = hl.grey_3, bg = hl.grey_1 })
set_hl('PmenuExtraSel', { fg = hl.bg,     bg = hl.grey_2 })
set_hl('PmenuSbar',     { fg = hl.grey_3, bg = hl.grey_1 })
set_hl('PmenuThumb',    { fg = hl.grey_3, bg = hl.grey_2 })
set_hl('WildMenu',      { fg = hl.bg,     bg = hl.grey_2 })
set_hl('WinBar',        { fg = hl.bg,     bg = hl.fg })
set_hl('WinBarNC',      { fg = hl.grey_1, bg = hl.grey_5 })
-- diff view
set_hl('DiffAdd',     { bg = hl.l_green })
set_hl('DiffDelete',  { bg = hl.l_red })
set_hl('DiffChange',  { bg = hl.cyan })
set_hl('Added',       { bg = hl.l_green })
set_hl('Removed',     { bg = hl.l_red })
set_hl('Changed',     { bg = hl.cyan })
set_hl('DiffText',    { underline = true })
set_hl('@diff.plus',  { bg = hl.l_green })
set_hl('@diff.minus', { bg = hl.l_red })
set_hl('@diff.delta', { bg = hl.cyan })
-- misc
set_hl('QuickFixLine',   { bg = hl.cyan })
set_hl('SnippetTabstop', { bg = hl.cyan })
set_hl('SpecialKey',     { fg = hl.grey_2 })
set_hl('SpellBad',       { fg = hl.red,     undercurl = true })
set_hl('SpellCap',       { fg = hl.magenta, undercurl = true })
set_hl('SpellLocal',     { fg = hl.green,   undercurl = true })
set_hl('SpellRare',      { fg = hl.magenta, undercurl = true })
