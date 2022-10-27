local M = {}

M.plugins = require "custom.plugins"

M.mappings = require "custom.mappings"

M.options = {
  nvChad = {
    update_url = "https://github.com/suciptoid/NvChad",
    update_branch = "custom",
  },
}

M.ui = {
  -- theme = "vscode_dark"
}

return M
