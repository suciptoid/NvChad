local M = {}

local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.nvterm = {
  t = {
    ["<ESC>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
  n = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
    ["<leader>`"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
}

return M
