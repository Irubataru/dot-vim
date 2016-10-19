"C++ specific settings

autocmd BufWinLeave *.cpp mkview
autocmd BufWinEnter *.cpp silent loadview

"autocmd InsertLeave,WinEnter *.*pp setlocal foldmethod=syntax
"autocmd InsertEnter,WinLeave *.*pp setlocal foldmethod=manual

nnoremap <leader>rf :set foldlevel=0<CR>
nnoremap <leader>rF :set foldlevel=1<CR>
nnoremap <leader>ll :Make<CR>
nnoremap <leader>LL :Make!<CR>

set foldmethod=syntax
set foldlevelstart=0
set foldlevel=0

set tabstop=2
set expandtab
set shiftwidth=2

let &colorcolumn="80,".join(range(120,999),",")
