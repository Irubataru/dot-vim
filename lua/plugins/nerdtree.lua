local keymap = vim.api.nvim_set_keymap

keymap('', '<C-N>', ':NERDTreeToggle<CR>', {})

--vim.cmd([[autocmd bufenter * if (winnr(--$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif]])
