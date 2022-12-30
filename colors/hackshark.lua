if vim.g.colors_name then
  vim.cmd 'hi clear'
  vim.cmd 'syntax reset'
end

vim.g.colors_name = 'hackshark'

local defaults = require 'hackshark.defaults'

for key, value in pairs(defaults.ansi_palette) do
  vim.g[key] = value
end

for key, value in pairs(defaults.highlight_groups) do
  vim.api.nvim_set_hl(0, key, value)
end
