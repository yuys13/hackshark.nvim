local M = {}

local c = {
  -- Standard
  bg = { '#282A36', 236 },
  fg = { '#F8F8F2', 253 },

  selection = { '#44475A', 239 },
  comment = { '#6272A4', 61 },

  red = { '#FF5555', 203 },
  orange = { '#FFB86C', 215 },
  yellow = { '#F1FA8C', 228 },
  green = { '#50FA7B', 84 },
  purple = { '#BD93F9', 141 },
  cyan = { '#8BE9FD', 117 },
  pink = { '#FF79C6', 212 },

  -- extra
  bglighter = { '#424450', 238 },
  bglight = { '#343746', 237 },
  bgdark = { '#21222C', 235 },
  bgdarker = { '#191A21', 234 },
}

local sl = {
  normal = {
    a = { fg = c.bg[1], bg = c.purple[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
  insert = {
    a = { fg = c.bg[1], bg = c.green[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
  visual = {
    a = { fg = c.bg[1], bg = c.orange[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
  replace = {
    a = { fg = c.bg[1], bg = c.red[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
  command = {
    a = { fg = c.bg[1], bg = c.yellow[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
  inactive = {
    a = { fg = c.cyan[1], bg = c.bg[1], gui = 'bold' },
    b = { fg = c.fg[1], bg = c.comment[1] },
    c = { fg = c.fg[1], bg = c.selection[1] },
  },
}

local ap = {
  terminal_color_0 = '#21222C',
  terminal_color_1 = '#FF5555',
  terminal_color_2 = '#50FA7B',
  terminal_color_3 = '#F1FA8C',
  terminal_color_4 = '#BD93F9',
  terminal_color_5 = '#FF79C6',
  terminal_color_6 = '#8BE9FD',
  terminal_color_7 = '#F8F8F2',
  terminal_color_8 = '#6272A4',
  terminal_color_9 = '#FF6E6E',
  terminal_color_10 = '#69FF94',
  terminal_color_11 = '#FFFFA5',
  terminal_color_12 = '#D6ACFF',
  terminal_color_13 = '#FF92DF',
  terminal_color_14 = '#A4FFFF',
  terminal_color_15 = '#FFFFFF',
}

local hi = {
  Normal = { fg = c.fg[1], ctermfg = c.fg[2], bg = c.bg[1], ctermbg = c.bg[2] },

  BgLighter = { bg = c.bglighter[1], ctermbg = c.bglighter[2] },
  BgLighterBold = { bg = c.bglighter[1], ctermbg = c.bglighter[2], bold = true },
  BgLight = { bg = c.bglight[1], ctermbg = c.bglight[2] },
  BgLightBold = { bg = c.bglight[1], ctermbg = c.bglight[2], bold = true },
  BgDark = { bg = c.bgdark[1], ctermbg = c.bgdark[2] },
  BgDarker = { bg = c.bgdarker[1], ctermbg = c.bgdarker[2] },

  Fg = { fg = c.fg[1], ctermfg = c.fg[2] },
  FgUnderline = { fg = c.fg[1], ctermfg = c.fg[2], underline = true },
  FgBold = { fg = c.fg[1], ctermfg = c.fg[2], bold = true },

  Comment = { fg = c.comment[1], ctermfg = c.comment[2] },
  CommentBold = { fg = c.comment[1], ctermfg = c.comment[2], bold = true },

  Selection = { bg = c.selection[1], ctermbg = c.selection[2] },

  Subtle = { fg = c.bglighter[1], ctermfg = c.bglighter[2] },

  Cyan = { fg = c.cyan[1], ctermfg = c.cyan[2] },
  CyanItalic = { fg = c.cyan[1], ctermfg = c.cyan[2], italic = true },
  CyanBoldInverse = { fg = c.cyan[1], ctermfg = c.cyan[2], bold = true, reverse = true },
  CyanUnderline = { fg = c.cyan[1], ctermfg = c.cyan[2], underline = true },

  Green = { fg = c.green[1], ctermfg = c.green[2] },
  GreenBold = { fg = c.green[1], ctermfg = c.green[2], bold = true },
  GreenItalic = { fg = c.green[1], ctermfg = c.green[2], italic = true },
  GreenUnderline = { fg = c.green[1], ctermfg = c.green[2], underline = true },
  GreenItalicUnderline = { fg = c.green[1], ctermfg = c.green[2], italic = true, underline = true },
  GreenInverse = { fg = c.green[1], ctermfg = c.green[2], reverse = true },

  Orange = { fg = c.orange[1], ctermfg = c.orange[2] },
  OrangeBold = { fg = c.orange[1], ctermfg = c.orange[2], bold = true },
  OrangeItalic = { fg = c.orange[1], ctermfg = c.orange[2], italic = true },
  OrangeBoldItalic = { fg = c.orange[1], ctermfg = c.orange[2], bold = true, italic = true },
  OrangeInverse = { fg = c.orange[1], ctermfg = c.orange[2], reverse = true },

  Pink = { fg = c.pink[1], ctermfg = c.pink[2] },
  PinkItalic = { fg = c.pink[1], ctermfg = c.pink[2], italic = true },

  Purple = { fg = c.purple[1], ctermfg = c.purple[2] },
  PurpleBold = { fg = c.purple[1], ctermfg = c.purple[2], bold = true },
  PurpleItalic = { fg = c.purple[1], ctermfg = c.purple[2], italic = true },
  PurpleInverse = { fg = c.purple[1], ctermfg = c.purple[2], reverse = true },

  Red = { fg = c.red[1], ctermfg = c.red[2] },
  RedInverse = { fg = c.red[1], ctermfg = c.red[2], reverse = true },

  Yellow = { fg = c.yellow[1], ctermfg = c.yellow[2] },
  YellowItalic = { fg = c.yellow[1], ctermfg = c.yellow[2], italic = true },

  Error = { fg = c.red[1], ctermfg = c.red[2], sp = c.red[1] },

  ErrorLine = { fg = c.red[1], ctermfg = c.red[2], sp = c.red[1], underline = true },
  WarnLine = { fg = c.orange[1], ctermfg = c.orange[2], sp = c.orange[1], underline = true },
  InfoLine = { fg = c.cyan[1], ctermfg = c.cyan[2], sp = c.cyan[1], underline = true },

  Boundary = { fg = c.comment[1], ctermfg = c.comment[2], bg = c.bgdark[1], ctermbg = c.bgdark[2] },
  WinSeparator = { fg = c.comment[1], ctermfg = c.comment[2], bg = c.bgdark[1], ctermbg = c.bgdark[2] },
}

local hg = {
  -- :h highlight-groups
  ColorColumn = hi.BgDark,
  Conceal = hi.Cyan,
  -- CurSearch = {},
  -- Cursor = {},
  -- lCursor = {},
  -- CursorIM = {},
  CursorColumn = hi.BgLighter,
  CursorLine = hi.BgLighter,
  Directory = hi.PurpleBold,
  DiffAdd = hi.Green,
  DiffChange = hi.Orange,
  DiffDelete = hi.Red,
  DiffText = hi.OrangeInverse,
  -- EndOfBuffer = {},
  -- TermCursor = {},
  -- TermCursorNC = {},
  ErrorMsg = hi.RedInverse,
  WinSeparator = hi.WinSeparator,
  Folded = hi.Boundary,
  FoldColumn = hi.Subtle,
  SignColumn = hi.Comment,
  IncSearch = hi.OrangeInverse,
  -- Substitute = {},
  LineNr = hi.Comment,
  -- LineNrAbove = {},
  -- LineNrBelow = {},
  CursorLineNr = hi.Yellow,
  -- CursorLineSign = {},
  -- CursorLineFold = {},
  MatchParen = hi.GreenUnderline,
  ModeMsg = hi.FgBold,
  -- MsgArea = {},
  -- MsgSeparator = {},
  MoreMsg = hi.FgBold,
  NonText = hi.Subtle,
  Normal = hi.Normal,
  NormalFloat = { link = 'Pmenu' },
  -- NormalNC = {},
  Pmenu = hi.BgDark,
  PmenuSel = hi.Selection,
  PmenuSbar = hi.BgDark,
  PmenuThumb = hi.Selection,
  Question = hi.FgBold,
  -- QuickFixLine = {},
  Search = hi.GreenInverse,
  SpecialKey = hi.Red,
  SpellBad = hi.ErrorLine,
  SpellCap = hi.InfoLine,
  SpellLocal = hi.WarnLine,
  SpellRare = hi.InfoLine,
  StatusLine = hi.BgLighterBold,
  StatusLineNC = hi.BgLight,
  TabLine = hi.Boundary,
  TabLineFill = hi.BgDark,
  TabLineSel = { link = 'Normal' },
  Title = hi.GreenBold,
  Visual = hi.Selection,
  VisualNOS = { link = 'Visual' },
  WarningMsg = hi.OrangeInverse,
  -- Whitespace = {},
  WildMenu = hi.PurpleInverse,
  -- WinBar = {},
  -- WinBarNC = {},

  -- :h hl-StatusLineTerm
  StatusLineTerm = { link = 'StatusLine' },
  StatusLineTermNC = { link = 'StatusLineNC' },

  -- :h group-name
  Comment = hi.Comment,

  Constant = hi.Purple,
  String = hi.Yellow,
  Character = hi.Pink,
  Number = hi.Constant,
  Boolean = hi.Constant,
  Float = hi.Constant,

  Identifier = hi.Fg,
  Function = hi.Green,

  Statement = hi.Pink,
  Conditional = hi.Pink,
  Repeat = hi.Pink,
  Label = hi.Pink,
  Operator = hi.Pink,
  Keyword = hi.Pink,
  Exception = hi.Pink,

  PreProc = hi.Pink,
  Include = hi.Pink,
  Define = hi.Pink,
  Macro = hi.Pink,
  PreCondit = hi.Pink,

  Type = hi.CyanItalic,
  StorageClass = hi.Pink,
  Structure = hi.Pink,
  Typedef = hi.Pink,

  Special = hi.Pink,
  -- SpecialChar = {},
  Tag = hi.Cyan,
  Delimiter = hi.Fg,
  SpecialComment = hi.CyanItalic,
  -- Debug = {},

  Underlined = hi.FgUnderline,
  -- Ignore = {},
  Error = hi.Error,
  Todo = hi.CyanBoldInverse,

  -- undocumented
  DiffAdded = { link = 'DiffAdd' },
  DiffRemoved = { link = 'DiffDelete' },

  -- :h lsp-highlight
  LspReferenceText = hi.Selection,
  LspReferenceRead = hi.Selection,
  LspReferenceWrite = hi.Selection,
  -- LspCodeLens = {},
  -- LspCodeLensSeparator = {},
  -- LspSignatureActiveParameter = {},

  -- :h diagnostic-highlights
  DiagnosticError = hi.Error,
  DiagnosticWarn = hi.Orange,
  DiagnosticInfo = hi.Cyan,
  DiagnosticHint = hi.Cyan,
  -- DiagnosticVirtualTextError = {},
  -- DiagnosticVirtualTextWarn = {},
  -- DiagnosticVirtualTextInfo = {},
  -- DiagnosticVirtualTextHint = {},
  DiagnosticUnderlineError = hi.ErrorLine,
  DiagnosticUnderlineWarn = hi.WarnLine,
  DiagnosticUnderlineInfo = hi.InfoLine,
  DiagnosticUnderlineHint = hi.InfoLine,
  -- DiagnosticFloatingError = {},
  -- DiagnosticFloatingWarn = {},
  -- DiagnosticFloatingInfo = {},
  -- DiagnosticFloatingHint = {},
  -- DiagnosticSignError = {},
  -- DiagnosticSignWarn = {},
  -- DiagnosticSignInfo = {},
  -- DiagnosticSignHint = {},

  -- treesitter
  ['@punctuation.special'] = { link = 'Special' },
  ['@function.builtin'] = hi.Cyan,
  ['@parameter'] = hi.OrangeItalic,
  ['@parameter.reference'] = hi.Orange,
  ['@field'] = hi.Orange,
  ['@constructor'] = hi.Cyan,
  ['@variable.builtin'] = hi.PurpleItalic,
  ['@text'] = hi.fg,
  ['@text.strong'] = hi.FgBold,
  ['@text.uri'] = { link = 'Underlined' },
  ['@text.underline'] = { link = 'Underlined' },
  ['@text.title'] = { link = 'Title' },
  ['@text.literal'] = { link = 'String' },
  ['@text.url'] = hi.Cyan,
  ['@text.diff.add'] = { link = 'DiffAdd' },
  ['@text.diff.delete'] = { link = 'DiffDelete' },
  -- ['@tag'] = {link = 'Tag'},
  ['@tag.delimiter'] = { link = 'Delimiter' },
  ['@tag.attribute'] = hi.GreenItalic,

  -- gitsigns
  GitSignsAdd = { link = 'DiffAdd' },
  GitSignsAddLn = { link = 'DiffAdd' },
  GitSignsAddNr = { link = 'DiffAdd' },
  GitSignsChange = { link = 'DiffChange' },
  GitSignsChangeLn = { link = 'DiffChange' },
  GitSignsChangeNr = { link = 'DiffChange' },
  GitSignsDelete = { link = 'DiffDelete' },
  GitSignsDeleteLn = { link = 'DiffDelete' },
  GitSignsDeleteNr = { link = 'DiffDelete' },

  -- cmp
  CmpItemAbbrDeprecated = hi.Error,
  CmpItemAbbrMatch = hi.Cyan,
  CmpItemAbbrMatchFuzzy = hi.Cyan,

  CmpItemKindText = hi.Fg,
  CmpItemKindMethod = { link = 'Function' },
  CmpItemKindFunction = { link = 'Function' },
  CmpItemKindConstructor = hi.Cyan,
  CmpItemKindField = hi.Orange,
  CmpItemKindVariable = hi.PurpleItalic,
  CmpItemKindClass = hi.Cyan,
  CmpItemKindInterface = hi.Cyan,
  CmpItemKindModule = hi.Yellow,
  CmpItemKindProperty = hi.Pink,
  CmpItemKindUnit = hi.Fg,
  CmpItemKindValue = hi.Yellow,
  CmpItemKindEnum = hi.Pink,
  CmpItemKindKeyword = hi.Pink,
  CmpItemKindSnippet = hi.Fg,
  CmpItemKindColor = hi.Yellow,
  CmpItemKindFile = hi.Yellow,
  CmpItemKindReference = hi.Orange,
  CmpItemKindFolder = hi.Yellow,
  CmpItemKindEnumMember = hi.Purple,
  CmpItemKindConstant = hi.Purple,
  CmpItemKindStruct = hi.Pink,
  CmpItemKindEvent = hi.Fg,
  CmpItemKindOperator = hi.Pink,
  CmpItemKindTypeParameter = hi.Cyan,

  CmpItemMenu = hi.Comment,
}

M.color_pallette = c
M.status_line = sl
M.ansi_palette = ap
M.highlights = hi
M.highlight_groups = hg

return M
