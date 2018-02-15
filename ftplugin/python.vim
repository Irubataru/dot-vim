" ------------------------
" python specific settings
" ------------------------

" UI
" {{{

set foldmethod=indent
set foldnestmax=2

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let g:formatters_python = ['yapf']

" }}}

" Keymaps
" {{{

nnoremap <silent> <F5> :AsyncRun -raw python %<CR>
"autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
nnoremap <leader>cf :Autoformat<CR>

" }}}
