require('telescope').load_extension("fzf")
require('telescope').load_extension("frecency")
local actions = require("telescope.actions")

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
  pickers = {
    find_files = {
      theme = 'dropwdown',
    }
  }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fd', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.spell_suggest, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})

vim.keymap.set('n', '<leader>fr', "<Cmd>Telescope frecency<CR>")

vim.keymap.set('n', '<leader>qf', "<Cmd>lua vim.lsp.buf.code_action()<CR>")
