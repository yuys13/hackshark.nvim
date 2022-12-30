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

return {
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
