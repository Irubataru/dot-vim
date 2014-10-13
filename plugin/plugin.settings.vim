"
"" - Plugin settings/options for vim -
"

"YouCompleteMe
"{{{
"let g:ycm_min_num_of_chars_for_completion = 2;
let g:ycm_complete_in_strings = 0
let g:ycm_warning_symbol = '?'
let g:ycm_error_symbol = '!'
"let g:ycm_warning_symbol = '⚠'
"let g:ycm_error_symbol = '☢'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'tex' : 1
      \}
"}}}

"UltiSnips
"{{{
"let g:UltiSnipsExpandTrigger = "<leader>ue"
"let g:UltiSnipsJumpForwardTrigger = "<leader>uj"
"let g:UltiSnipsJumpBackwardTrigger = "<leader>uk"
"}}}

"clang_complete
"{{{
"let g:clang_auto_select = 1
"let g:clang_complete_auto = 1
"let g:clang_complete_patterns = 1
"let g:clang_use_library=1
"let g:clang_snippets = 1
"let g:clang_conceal_snippets=1
""let g:clang_close_preview = 1

"let g:clang_user_options = '-std=c++11'
"let g:clang_auto_user_options = '.clang_complete'
""let g:clang_auto_user_options = ''
"let g:clang_library_path="/usr/lib/llvm-3.4/lib"

"let g:clang_hl_errors = 1
"let g:clang_complete_copen = 1
""let g:clang_periodic_quickfix = 1
"}}}

""supertab
"{{{
"let g:SuperTabDefaultCompletionType = "<c-x><c-u><c-p>"
"let g:SuperTabLongestHighlight = 1
"set completeopt+=longest,menuone
"}}}

"Latex-Suite
"{{{
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_GotoError=0
let g:Tex_FoldedEnvironments=',enum,itemize,tabular,lstlisting,tikzpicture,block,frame'
"}}}

"CtrlP
"{{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"}}}

"vim-template
"{{{
let g:templates_no_autocmd = 1
"}}}

""slimv
"{{{
"let g:slimv_impl = 'sbcl'
"let g:slimv_swank_cmd = '!sbcl --load /usr/share/common-lisp/source/slime/start-swank.lisp &'
"let g:slimv_menu = 1
"let g:slimv_keybindings = 1
"let g:slimv_swank_cmd = '! urxvt -e sbcl --load /home/glesaaen/.vim/bundle/slimv/slime/start-swank.lisp &> /dev/null &'
"let g:slimv_repl_max_len = 150
"}}}

""MiniBufExplorer
"{{{
"map <Leader>b :MiniBufExplorer<cr>
"map <Leader>mc :CMiniBufExplorer<cr>
"map <Leader>mu :UMiniBufExplorer<cr>
"map <Leader>mt :TMiniBufExplorer<cr>
""let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 
"}}}

"vim-airline
"{{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"}}}
