"" - Key mappings for vim -

" Navigation
" {{{

" Line movement
map <Leader><Leader>/ <Plug>(easymotion-sn)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)

" Fold movement
"" Replace the zj zk calls to move to next closed fold
nnoremap <silent> zj :call NextClosedFold('j')<CR>
nnoremap <silent> zk :call NextClosedFold('k')<CR>

" Buffer Movement
nnoremap <C-H> :BuffergatorMruCyclePrev<cr>
nnoremap <C-L> :BuffergatorMruCycleNext<cr>

" Tab movement
noremap <C-Left> :tabp<CR>
noremap <C-Right> :tabn<CR>

" }}}

" UI Related
" {{{
nnoremap <space> zz
nnoremap <Leader>zz :let &scrolloff=810-&scrolloff<CR>

nnoremap <Leader>rf :set foldlevel=0<CR>
nnoremap <F4> :call HighLightToggle()<CR>
" }}}

" Plugin keymaps
" {{{

"" YouCompleteMe
"" {{{
nmap <Leader>rc :YcmDiags<CR>
nnoremap <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gD :YcmCompleter GoToDeclaration<CR>
"" }}}

"" NERDCommenter
"" {{{
let NERDComInsertMap='<C-C>'
"" }}}

"" NERDTree
"" {{{
map <C-N> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"" }}}

""Latex suite
"" {{{
map <Leader>lt :TTemplate<cr>
"" }}}

""CtrlP
"" {{{
"" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

"" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
"" }}}

"" vim-buffergator
"" {{{
"" View the entire list of buffers open
nnoremap <Leader>bl :BuffergatorOpen<cr>
"" }}}

"" Gundo
"" {{{
nnoremap <Leader>uu :GundoToggle<CR>
"" }}}

"" tagbar
"" {{{
nmap <F8> :TagbarToggle<CR>
"" }}}

"" fugitive.vim
"" {{{
nnoremap <Leader>gg :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
"" }}}

"" hardmode
"" {{{
noremap <Leader>H <Esc>:call ToggleHardMode()<CR>
"" }}}

"" Commands for compiling and running C++ programs
"" {{{
:command C :exec "":!${CXX} -O3 -g ${CFLAGS} " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cc :exec "":!${CXX} -O3 -g ${CFLAGS} -Wall " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cr :exec "":w | !${CXX} -O3 -g ${CFLAGS} " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command Cg :exec "":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command Cgr :exec "":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command C11 :exec "":!${CXX} -O3 -g ${CFLAGS} -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C11r :exec "":w | !${CXX} -O3 -g ${CFLAGS} -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command C11g :exec "":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C11gr :exec "":!${CXX} -O3 -g ${CFLAGS} -lgsl -lgslcblas -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g") "; ./" .substitute(expand("%"),".cpp",".out","g")
:command R :exec ""!./" .substitute(expand("%"),".cpp",".out","g")
"" }}}

" }}}

" Accompanying functions
" {{{

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

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

function! HighLightToggle()
  if(&hlsearch == 1)
    set nohlsearch
  else
    set hlsearch
  endif
endfunc

" Move to next closed fold, skipping open opnes
" Code from: http://stackoverflow.com/questions/9403098/is-it-possible-to-jump-to-closed-folds-in-vim/9407015#9407015
function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction
" }}}
