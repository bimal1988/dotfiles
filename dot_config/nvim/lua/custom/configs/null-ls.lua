local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local format = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  format.deno_fmt,
  -- b.formatting.prettier,
  format.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  format.stylua,

  -- Shell
  format.shfmt,
  lint.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  format.clang_format,

  --python
  format.black,
  lint.ruff,
  lint.mypy,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group=augroup,
        buffer=bufnr,
        callback=function()
          vim.lsp.buf.format({ bufnr=bufnr })
        end
      })
    end
  end
}
