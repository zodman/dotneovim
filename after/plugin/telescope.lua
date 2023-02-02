-- https://github.com/nvim-telescope/telescope.nvim#default-mappings
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
-- pending enhancin
vim.keymap.set('n', '<leader>ag', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gr', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require "telescope".setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
}

require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}

require("telescope").load_extension("ui-select")
