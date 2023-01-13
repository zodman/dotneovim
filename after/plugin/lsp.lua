local lsp = require('lsp-zero')
local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {}) -- this line breaks it

lsp.preset('recommended')


lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>w", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>le", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<leader>lh", vim.lsp.buf.signature_help, opts)
end)


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

null_ls.setup({
  debug = true,
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    require("typescript.extensions.null-ls.code-actions"),
  },
})

