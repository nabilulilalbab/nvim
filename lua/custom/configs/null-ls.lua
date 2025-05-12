local null_ls = require "null-ls"

local b = null_ls.builtins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
  -- webdev stuff
  b.formatting.prettier.with {
    filetypes = {
      "html", "markdown", "css",
      "javascript", "typescript", "javascriptreact", "typescriptreact"
    }
  },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  b.formatting.golines,
}

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds {
      group = augroup,
      buffer = bufnr,
    }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { bufnr = bufnr }
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}

