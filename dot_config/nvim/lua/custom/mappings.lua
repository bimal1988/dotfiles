local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>", "escape insert mode" },
  },
}

M.shade = {
  n = {
    ["<Bslash>"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

return M
