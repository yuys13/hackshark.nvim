if vim.g.colors_name then
  vim.cmd 'hi clear'
  vim.cmd 'syntax reset'
end

vim.g.colors_name = 'hackshark'

-- set terminal color
vim.g['terminal_color_0'] = '#21222C'
vim.g['terminal_color_1'] = '#FF5555'
vim.g['terminal_color_2'] = '#50FA7B'
vim.g['terminal_color_3'] = '#F1FA8C'
vim.g['terminal_color_4'] = '#BD93F9'
vim.g['terminal_color_5'] = '#FF79C6'
vim.g['terminal_color_6'] = '#8BE9FD'
vim.g['terminal_color_7'] = '#F8F8F2'
vim.g['terminal_color_8'] = '#6272A4'
vim.g['terminal_color_9'] = '#FF6E6E'
vim.g['terminal_color_10'] = '#69FF94'
vim.g['terminal_color_11'] = '#FFFFA5'
vim.g['terminal_color_12'] = '#D6ACFF'
vim.g['terminal_color_13'] = '#FF92DF'
vim.g['terminal_color_14'] = '#A4FFFF'
vim.g['terminal_color_15'] = '#FFFFFF'

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

-- :h highlight-groups
vim.api.nvim_set_hl(0, 'ColorColumn', hi.BgDark)
vim.api.nvim_set_hl(0, 'Conceal', hi.Cyan)
-- vim.api.nvim_set_hl(0,'CurSearch' , {})
-- vim.api.nvim_set_hl(0,'Cursor' , {})
-- vim.api.nvim_set_hl(0,'lCursor' , {})
-- vim.api.nvim_set_hl(0,'CursorIM' , {})
vim.api.nvim_set_hl(0, 'CursorColumn', hi.BgLighter)
vim.api.nvim_set_hl(0, 'CursorLine', hi.BgLighter)
vim.api.nvim_set_hl(0, 'Directory', hi.PurpleBold)
vim.api.nvim_set_hl(0, 'DiffAdd', hi.Green)
vim.api.nvim_set_hl(0, 'DiffChange', hi.Orange)
vim.api.nvim_set_hl(0, 'DiffDelete', hi.Red)
vim.api.nvim_set_hl(0, 'DiffText', hi.OrangeInverse)
-- vim.api.nvim_set_hl(0,'EndOfBuffer' , {})
-- vim.api.nvim_set_hl(0,'TermCursor' , {})
-- vim.api.nvim_set_hl(0,'TermCursorNC' , {})
vim.api.nvim_set_hl(0, 'ErrorMsg', hi.RedInverse)
vim.api.nvim_set_hl(0, 'WinSeparator', hi.WinSeparator)
vim.api.nvim_set_hl(0, 'Folded', hi.Boundary)
vim.api.nvim_set_hl(0, 'FoldColumn', hi.Subtle)
vim.api.nvim_set_hl(0, 'SignColumn', hi.Comment)
vim.api.nvim_set_hl(0, 'IncSearch', hi.OrangeInverse)
-- vim.api.nvim_set_hl(0,'Substitute' , {})
vim.api.nvim_set_hl(0, 'LineNr', hi.Comment)
-- vim.api.nvim_set_hl(0,'LineNrAbove' , {})
-- vim.api.nvim_set_hl(0,'LineNrBelow' , {})
vim.api.nvim_set_hl(0, 'CursorLineNr', hi.Yellow)
-- vim.api.nvim_set_hl(0,'CursorLineSign' , {})
-- vim.api.nvim_set_hl(0,'CursorLineFold' , {})
vim.api.nvim_set_hl(0, 'MatchParen', hi.GreenUnderline)
vim.api.nvim_set_hl(0, 'ModeMsg', hi.FgBold)
-- vim.api.nvim_set_hl(0,'MsgArea' , {})
-- vim.api.nvim_set_hl(0,'MsgSeparator' , {})
vim.api.nvim_set_hl(0, 'MoreMsg', hi.FgBold)
vim.api.nvim_set_hl(0, 'NonText', hi.Subtle)
vim.api.nvim_set_hl(0, 'Normal', hi.Normal)
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Pmenu' })
-- vim.api.nvim_set_hl(0,'NormalNC' , {})
vim.api.nvim_set_hl(0, 'Pmenu', hi.BgDark)
vim.api.nvim_set_hl(0, 'PmenuSel', hi.Selection)
vim.api.nvim_set_hl(0, 'PmenuSbar', hi.BgDark)
vim.api.nvim_set_hl(0, 'PmenuThumb', hi.Selection)
vim.api.nvim_set_hl(0, 'Question', hi.FgBold)
-- vim.api.nvim_set_hl(0,'QuickFixLine' , {})
vim.api.nvim_set_hl(0, 'Search', hi.GreenInverse)
vim.api.nvim_set_hl(0, 'SpecialKey', hi.Red)
vim.api.nvim_set_hl(0, 'SpellBad', hi.ErrorLine)
vim.api.nvim_set_hl(0, 'SpellCap', hi.InfoLine)
vim.api.nvim_set_hl(0, 'SpellLocal', hi.WarnLine)
vim.api.nvim_set_hl(0, 'SpellRare', hi.InfoLine)
vim.api.nvim_set_hl(0, 'StatusLine', hi.BgLighterBold)
vim.api.nvim_set_hl(0, 'StatusLineNC', hi.BgLight)
vim.api.nvim_set_hl(0, 'TabLine', hi.Boundary)
vim.api.nvim_set_hl(0, 'TabLineFill', hi.BgDark)
vim.api.nvim_set_hl(0, 'TabLineSel', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'Title', hi.GreenBold)
vim.api.nvim_set_hl(0, 'Visual', hi.Selection)
vim.api.nvim_set_hl(0, 'VisualNOS', { link = 'Visual' })
vim.api.nvim_set_hl(0, 'WarningMsg', hi.OrangeInverse)
-- vim.api.nvim_set_hl(0,'Whitespace' , {})
vim.api.nvim_set_hl(0, 'WildMenu', hi.PurpleInverse)
-- vim.api.nvim_set_hl(0,'WinBar' , {})
-- vim.api.nvim_set_hl(0,'WinBarNC' , {})

-- :h hl-StatusLineTerm
vim.api.nvim_set_hl(0, 'StatusLineTerm', { link = 'StatusLine' })
vim.api.nvim_set_hl(0, 'StatusLineTermNC', { link = 'StatusLineNC' })

-- :h group-name
vim.api.nvim_set_hl(0, 'Comment', hi.Comment)

vim.api.nvim_set_hl(0, 'Constant', hi.Purple)
vim.api.nvim_set_hl(0, 'String', hi.Yellow)
vim.api.nvim_set_hl(0, 'Character', hi.Pink)
vim.api.nvim_set_hl(0, 'Number', hi.Purple)
vim.api.nvim_set_hl(0, 'Boolean', hi.Purple)
vim.api.nvim_set_hl(0, 'Float', hi.Purple)

vim.api.nvim_set_hl(0, 'Identifier', hi.Fg)
vim.api.nvim_set_hl(0, 'Function', hi.Green)

vim.api.nvim_set_hl(0, 'Statement', hi.Pink)
vim.api.nvim_set_hl(0, 'Conditional', hi.Pink)
vim.api.nvim_set_hl(0, 'Repeat', hi.Pink)
vim.api.nvim_set_hl(0, 'Label', hi.Pink)
vim.api.nvim_set_hl(0, 'Operator', hi.Pink)
vim.api.nvim_set_hl(0, 'Keyword', hi.Pink)
vim.api.nvim_set_hl(0, 'Exception', hi.Pink)

vim.api.nvim_set_hl(0, 'PreProc', hi.Pink)
vim.api.nvim_set_hl(0, 'Include', hi.Pink)
vim.api.nvim_set_hl(0, 'Define', hi.Pink)
vim.api.nvim_set_hl(0, 'Macro', hi.Pink)
vim.api.nvim_set_hl(0, 'PreCondit', hi.Pink)

vim.api.nvim_set_hl(0, 'Type', hi.CyanItalic)
vim.api.nvim_set_hl(0, 'StorageClass', hi.Pink)
vim.api.nvim_set_hl(0, 'Structure', hi.Pink)
vim.api.nvim_set_hl(0, 'Typedef', hi.Pink)

vim.api.nvim_set_hl(0, 'Special', hi.Pink)
-- vim.api.nvim_set_hl(0,'SpecialChar' , {})
vim.api.nvim_set_hl(0, 'Tag', hi.Cyan)
vim.api.nvim_set_hl(0, 'Delimiter', hi.Fg)
vim.api.nvim_set_hl(0, 'SpecialComment', hi.CyanItalic)
-- vim.api.nvim_set_hl(0,'Debug' , {})

vim.api.nvim_set_hl(0, 'Underlined', hi.FgUnderline)
-- vim.api.nvim_set_hl(0,'Ignore' , {})
vim.api.nvim_set_hl(0, 'Error', hi.Error)
vim.api.nvim_set_hl(0, 'Todo', hi.CyanBoldInverse)

-- undocumented
vim.api.nvim_set_hl(0, 'DiffAdded', { link = 'DiffAdd' })
vim.api.nvim_set_hl(0, 'DiffRemoved', { link = 'DiffDelete' })

-- :h lsp-highlight
vim.api.nvim_set_hl(0, 'LspReferenceText', hi.Selection)
vim.api.nvim_set_hl(0, 'LspReferenceRead', hi.Selection)
vim.api.nvim_set_hl(0, 'LspReferenceWrite', hi.Selection)
-- vim.api.nvim_set_hl(0,'LspCodeLens' , {})
-- vim.api.nvim_set_hl(0,'LspCodeLensSeparator' , {})
-- vim.api.nvim_set_hl(0,'LspSignatureActiveParameter' , {})

-- :h diagnostic-highlights
vim.api.nvim_set_hl(0, 'DiagnosticError', hi.Error)
vim.api.nvim_set_hl(0, 'DiagnosticWarn', hi.Orange)
vim.api.nvim_set_hl(0, 'DiagnosticInfo', hi.Cyan)
vim.api.nvim_set_hl(0, 'DiagnosticHint', hi.Cyan)
-- vim.api.nvim_set_hl(0,'DiagnosticVirtualTextError' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticVirtualTextWarn' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticVirtualTextInfo' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticVirtualTextHint' , {})
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', hi.ErrorLine)
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', hi.WarnLine)
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', hi.InfoLine)
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', hi.InfoLine)
-- vim.api.nvim_set_hl(0,'DiagnosticFloatingError' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticFloatingWarn' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticFloatingInfo' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticFloatingHint' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticSignError' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticSignWarn' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticSignInfo' , {})
-- vim.api.nvim_set_hl(0,'DiagnosticSignHint' , {})

-- treesitter
vim.api.nvim_set_hl(0, '@punctuation.special', { link = 'Special' })
vim.api.nvim_set_hl(0, '@function.builtin', hi.Cyan)
vim.api.nvim_set_hl(0, '@parameter', hi.OrangeItalic)
vim.api.nvim_set_hl(0, '@parameter.reference', hi.Orange)
vim.api.nvim_set_hl(0, '@field', hi.Orange)
vim.api.nvim_set_hl(0, '@constructor', hi.Cyan)
vim.api.nvim_set_hl(0, '@variable.builtin', hi.PurpleItalic)
vim.api.nvim_set_hl(0, '@text', hi.Fg)
vim.api.nvim_set_hl(0, '@text.strong', hi.FgBold)
vim.api.nvim_set_hl(0, '@text.uri', hi.CyanUnderline)
vim.api.nvim_set_hl(0, '@text.underline', { link = 'Underlined' })
vim.api.nvim_set_hl(0, '@text.title', { link = 'Title' })
vim.api.nvim_set_hl(0, '@text.literal', { link = 'String' })
vim.api.nvim_set_hl(0, '@text.diff.add', { link = 'DiffAdd' })
vim.api.nvim_set_hl(0, '@text.diff.delete', { link = 'DiffDelete' })
-- vim.api.nvim_set_hl(0,'@tag' , {link = 'Tag'})
vim.api.nvim_set_hl(0, '@tag.delimiter', { link = 'Delimiter' })
vim.api.nvim_set_hl(0, '@tag.attribute', hi.GreenItalic)

-- gitsigns
vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'DiffAdd' })
vim.api.nvim_set_hl(0, 'GitSignsAddLn', { link = 'DiffAdd' })
vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'DiffAdd' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'DiffChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangeLn', { link = 'DiffChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'DiffChange' })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'DiffDelete' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteLn', { link = 'DiffDelete' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'DiffDelete' })

-- cmp
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', hi.Error)
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', hi.Cyan)
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', hi.Cyan)

vim.api.nvim_set_hl(0, 'CmpItemKindText', hi.Fg)
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'Function' })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { link = 'Function' })
vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', hi.Cyan)
vim.api.nvim_set_hl(0, 'CmpItemKindField', hi.Orange)
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', hi.PurpleItalic)
vim.api.nvim_set_hl(0, 'CmpItemKindClass', hi.Cyan)
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', hi.Cyan)
vim.api.nvim_set_hl(0, 'CmpItemKindModule', hi.Yellow)
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', hi.Pink)
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', hi.Fg)
vim.api.nvim_set_hl(0, 'CmpItemKindValue', hi.Yellow)
vim.api.nvim_set_hl(0, 'CmpItemKindEnum', hi.Pink)
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', hi.Pink)
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', hi.Fg)
vim.api.nvim_set_hl(0, 'CmpItemKindColor', hi.Yellow)
vim.api.nvim_set_hl(0, 'CmpItemKindFile', hi.Yellow)
vim.api.nvim_set_hl(0, 'CmpItemKindReference', hi.Orange)
vim.api.nvim_set_hl(0, 'CmpItemKindFolder', hi.Yellow)
vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', hi.Purple)
vim.api.nvim_set_hl(0, 'CmpItemKindConstant', hi.Purple)
vim.api.nvim_set_hl(0, 'CmpItemKindStruct', hi.Pink)
vim.api.nvim_set_hl(0, 'CmpItemKindEvent', hi.Fg)
vim.api.nvim_set_hl(0, 'CmpItemKindOperator', hi.Pink)
vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', hi.Cyan)

vim.api.nvim_set_hl(0, 'CmpItemMenu', hi.Comment)
