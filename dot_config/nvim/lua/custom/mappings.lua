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

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M. dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require ('dap-python').test_method()
      end
    }
  }
}

return M
