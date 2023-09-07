---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"

M.ui = { theme = 'vscode_dark' }

M.mappings = require "custom.mappings"

return M
