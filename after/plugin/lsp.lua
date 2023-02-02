local lsp = require('lsp-zero')
vim.opt.signcolumn = 'yes'

lsp.set_preferences({
  set_lsp_keymaps = true, -- set to false if you want to configure your own keybindings
  manage_nvim_cmp = true, -- set to false if you want to configure nvim-cmp on your own
})
lsp.preset('recommended')

lsp.setup()

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {}) -- this line breaks it



null_ls.setup({
  debug = true,
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    require("typescript.extensions.null-ls.code-actions"),
  },
})

