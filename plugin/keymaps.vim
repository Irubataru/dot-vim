"" - Key mappings for vim -
"{{{
noremap <C-h> :tabp<enter>
noremap <C-l> :tabn<enter>
nnoremap <leader>tk :execute "tabmove" tabpagenr() <CR>
nnoremap <leader>tj :execute "tabmove" tabpagenr() - 2 <CR>

nnoremap <space> zz
nnoremap <Leader>zz :let &scrolloff=810-&scrolloff<CR>

:command Qt tabclose

" F4 toggles hlsearch
let hlstate=0
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

nnoremap <leader>en :call <SID>Fancy_Quickfix_Cmd(':cnext')<CR>
nnoremap <leader>eN :call <SID>Fancy_Quickfix_Cmd(':cprev')<CR>
nnoremap <leader>ee :call <SID>Fancy_Quickfix_Cmd(':cc')<CR>
nnoremap <leader>eo :cwindow<CR>
nnoremap <leader>eO :copen<CR>
nnoremap <leader>ec :cclose<CR>
"}}}

""Plugin keymaps
""{{{

"clang_complete
"{{{
"nmap <leader>rc :call g:ClangUpdateQuickFix()<CR>
"}}}

"YouCompleteMe
"{{{
nmap <leader>rc :YcmDiags<CR>
"}}}

"NERDCommenter
"{{{
let NERDComInsertMap='<c-c>'
"}}}

"NERDTree
"{{{
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"}}}

"MiniBufExplorer
"{{{
noremap <leader>me :MBEOpen<CR>
noremap <leader>mc :MBEClose<CR>
noremap <leader>mt :MBEToggle<CR>
noremap <leader>mf :MBEFocus<CR>
noremap <leader>,a :MBEOpenAll<CR>
noremap <C-Right> :MBEbn<CR>
noremap <C-Left> :MBEbp<CR>
noremap <C-Up> :MBEbf<CR>
noremap <C-Down> :MBEbb<CR>
"}}}

"Latex suite
"{{{
map <Leader>lt :TTemplate<cr>
"}}}

"Gundo
"{{{
nnoremap <Leader>uu :GundoToggle<CR>
"}}}

"Easymotion
"{{{
map <Leader><Leader>/ <Plug>(easymotion-sn)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
"}}}

"tagbar
"{{{
nmap <F8> :TagbarToggle<CR>
"}}}

" Commands for compiling and running C++ programs
"{{{
:command C :exec ":!${CXX} -O3 -g ${CFLAGS} " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cc :exec ":!${CXX} -O3 -g ${CFLAGS} -Wall " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cr :exec ":w | !${CXX} -O3 -g ${CFLAGS} " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command Cg :exec ":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cgr :exec ":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command C11 :exec ":!${CXX} -O3 -g ${CFLAGS} -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C11r :exec ":w | !${CXX} -O3 -g ${CFLAGS} -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command C11g :exec ":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C11gr :exec ":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command R :exec "!./" .substitute(expand("%"),".cpp",".out","g")
"}}}

" Compiling and showing LaTeX documents, primarily 
"{{{
:command Tex :exec ":!pdflatex " .expand("%")
:command Bib :exec ":!pdflatex %; bibtex " .substitute(expand("%"),".tex",".aux","g") "; pdflatex %; pdflatex %"
:command Pdf :exec ":!zathura " .substitute(expand("%"),".tex",".pdf","g") "> /dev/null 2>&1 &"
"}}}

""}}}

"" Accompanying functions
""{{{

"Simple wrapper: do quickfix cmd, center line and if taglist.vim's window is
"open, sync, from vim.wikia.com/wiki/Search_using_quickfix_to_list_occurences
function s:Fancy_Quickfix_Cmd(Cmd)
	try
		execute a:Cmd
	catch /^Vim(\a\*):E553:/
		echohl ErrorMsg | echo v:exception | echohl None
	endtry
	norm! zz
	"If the laglist window is open then :TlistSync
	if bufwinnr('__Tag_List__') != -1
		TlistSync
	endif
endfunction
""}}}
