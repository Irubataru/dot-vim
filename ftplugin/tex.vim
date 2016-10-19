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

setlocal spell spelllang=en_gb

let g:SuperTabDefaultCompletionType = '<C-x><C-o>'

"" LatexBox Keymaps
"" {{{
"nnoremap <Leader>ll :Latexmk<CR>
nnoremap <Leader>lv :LatexView<CR>
nnoremap <Leader>lv :LatexFold<CR>
nnoremap <Leader>lv :LatexTOC<CR>
"" }}}

