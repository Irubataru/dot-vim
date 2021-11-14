" ------------------------- "
" Telescope plugin settings "
" ------------------------- "

let s:plugin_name = 'telescope.nvim'

if has_key(g:plugs, s:plugin_name) && stridx(&rtp, g:plugs[s:plugin_name].dir)

  augroup plugin_telescope
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " Mimic ctrl-space behaviour
    nnoremap <c-b> <cmd>Telescope buffers<cr>

  augroup END

endif

