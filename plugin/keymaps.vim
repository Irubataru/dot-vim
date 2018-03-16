"" - Key mappings for vim -

let mapleader=" "

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
nnoremap <silent> <C-l> :CtrlSpaceGoDown<CR>
nnoremap <silent> <C-h> :CtrlSpaceGoUp<CR>

"" File navigation
"" {{{

" Start a :e with the dir of the current buffer already filled in
nnoremap ,e :e <C-R>=Get_Relative_Cwd() <CR>

"" }}}

" }}}

" UI Related
" {{{

nnoremap <Leader><Leader> zz
nnoremap <Leader>zz :let &scrolloff=810-&scrolloff<CR>
nnoremap <Leader>rf :set foldlevel=0<CR>

" Toggles for quickfix consistent with vim-unimpaired
" Toggle-command from the vim-togglelist plugin
nnoremap <script> <silent> coq :call ToggleQuickfixList()<cr>
nnoremap [oq :copen<cr>
nnoremap ]oq :cclose<cr>

" Reformat current paragraph
nnoremap <Leader>ff gqip

" More easily accessible file completion
inoremap <C-F> <C-X><C-F>

" Disable EX mode
nnoremap Q <NOP>

" Replace yank with flashy-yank that highlights yanked area
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" Use incsearch.vim as default search function
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" let incsearch manage hlsearch
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" }}}

" Terminal related
" {{{

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

" }}}

" Plugin keymaps
" {{{

"" YouCompleteMe
"" {{{
autocmd FileType c,cpp noremap <Leader>rc :YcmDiags<CR>
autocmd FileType c,cpp noremap <Leader>gt :YcmCompleter GoTo<CR>
"let g:ycm_key_invoke_completion = '<C-S-Space>'
"autocmd FileType c,cpp noremap <Leader>gd :YcmCompleter GoToDefinition<CR>
"autocmd FileType c,cpp noremap <Leader>gD :YcmCompleter GoToDeclaration<CR>
"" }}}

"" Vim-CtrlSpace
"" {{{
let g:CtrlSpaceDefaultMappingKey = "<C-b>"
"" }}}

"" vim-clang-format
"" {{{

autocmd FileType c,cpp nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>ca :ClangFormatAutoToggle<CR>

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

"" CtrlP
"" {{{
"" Use a leader instead of the actual named binding
nmap <silent> <leader>p :CtrlP<cr>

"" Easy bindings for its various modes
nmap <silent> <leader>bb :CtrlPBuffer<cr>
nmap <silent> <leader>bm :CtrlPMixed<cr>
nmap <silent> <leader>bs :CtrlPMRU<cr>
"" }}}

"" vim-buffergator
"" {{{
"" View the entire list of buffers open
nnoremap <silent> <Leader>bl :BuffergatorOpen<cr>
"" }}}

"" Gundo
"" {{{
nnoremap <silent> <Leader>uu :GundoToggle<CR>
"" }}}

"" tagbar
"" {{{
nmap <F8> :TagbarToggle<CR>
"" }}}

"" fugitive.vim
"" {{{
nnoremap <silent> <Leader>gg :Gstatus<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
"" }}}

"" hardmode
"" {{{
noremap <Leader>H <Esc>:call ToggleHardMode()<CR>
"" }}}

"" TaskList
"" {{{
map <Leader>tt <Plug>TaskList
"" }}}

"" vim-easymotion
"" {{{
"<Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"" }}}

"" signify
"" {{{
nnoremap <silent> <Leader>ss :SignifyToggle<CR>
"" }}}

"" Goyo
"" {{{
nnoremap <silent> <C-g> :Goyo<CR>
"" }}}

"" Limelight
"" {{{
nnoremap <silent> <C-y> :Limelight!!<CR>
"" }}}

"" Commands for compiling and running C++ programs
"" {{{
:command C :exec ":!${CXX} -g ${CFLAGS} " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C11 :exec ":!${CXX} -g ${CFLAGS} -std=c++11 " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command C1y :exec ":!${CXX} -g ${CFLAGS} -std=c++1y " .expand("%") "-o " .substitute(expand("%"),".cpp",".out","g")
:command R :exec "!./" .substitute(expand("%"),".cpp",".out","g")
"" }}}

" }}}

" Accompanying functions
" {{{

" Returns the path to the current buffer relative to your current working
" directory
function Get_Relative_Cwd()
  if expand("%:p:h") == getcwd()
    return ""
  else
    return substitute(expand("%:p:h"), "^" . getcwd() . "/", "", "") . "/"
  endif
endfunction

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
