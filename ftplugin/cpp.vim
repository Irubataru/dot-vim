"C++ specific settings

autocmd BufWinLeave *.cpp mkview
autocmd BufWinEnter *.cpp silent loadview

autocmd InsertEnter *.cpp set foldmethod=manual
autocmd InsertLeave *.cpp set foldmethod=syntax
"autocmd InsertEnter * bufdo! set foldmethod=manual
"autocmd InsertEnter * bufdo! mkview
"autocmd InsertLeave * bufdo! silent loadview
"autocmd InsertLeave * bufdo! set foldmethod=syntax


nnoremap <leader>rf :set foldlevel=0<CR>
nnoremap <leader>rF :set foldlevel=1<CR>

set foldmethod=syntax

set tabstop=2
set expandtab
set shiftwidth=2

let &colorcolumn="80,".join(range(120,999),",")
