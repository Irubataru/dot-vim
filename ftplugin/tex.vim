"LaTeX specific settings

"augroup filetype_tex
  "autocmd!
  "autocmd FileReadPost *.tex silent LatexFold
"augroup END

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=80
let maplocalleader=" "

setlocal spell spelllang=en_gb

let g:SuperTabDefaultCompletionType = '<C-x><C-o>'

"" Keymaps
"" {{{
"nnoremap <Leader>ll :Latexmk<CR>
"nnoremap <Leader>lv :LatexView<CR>
"nnoremap <Leader>lf :LatexFold<CR>
"nnoremap <Leader>lt :LatexTOC<CR>

nnoremap <leader>cf :Autoformat<CR>
"" }}}

