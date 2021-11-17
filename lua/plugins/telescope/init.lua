local actions = require('telescope.actions')
require('telescope').setup({
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-x>"] = actions.delete_buffer,
        },
      },
    },
  },
})

local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true})

keymap('n', '<C-b>', "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
