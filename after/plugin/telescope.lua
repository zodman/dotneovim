-- https://github.com/nvim-telescope/telescope.nvim#default-mappings
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
-- pending enhancin
vim.keymap.set('n', '<leader>ag', builtin.grep_string, {})

require "telescope".setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
}
