"
"" - Plugin settings/options for vim -
"

"coc.nvim
"{{{

"" Better display for messages
"set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

"" always show signcolumns
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"}}}

"CtrlSpace
"{{{

"let g:CtrlSpaceIgnoredFiles = '\v(doc|devel)[\/]'
let g:CtrlSpaceIgnoredFiles = '\v(data|doc)[\/]'

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

"}}}

"UltiSnips
"{{{

"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"}}}

"vim-cpp-enhanced-highlight
"{{{

let g:cpp_experimental_template_highlight = 1

"}}}

"vim-buffergator
"{{{

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

"}}}

"vim-template
"{{{

let g:templates_no_autocmd = 1
let g:templates_directory = "$HOME/.vim/templates"

"}}}

"LaTeX-Box
"{{{

let g:LatexBox_latexmk_async = 1
let g:LatexBox_Folding = 1
let g:LatexBox_fold_automatic = 0
let g:LatexBox_quickfix = 2
let g:LatexBox_no_mappings = 1

"}}}

"vimtex
"{{{

let g:vimtex_fold_enabled = 1
let g:vimtex_view_method = "zathura"


"}}}

"lightline
"{{{

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Disable the tabline for CtrlSpace
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 0
    \ }

" Need to fix lightline for CtrlSpace
" http://genkisugimoto.com/blog/vim-ctrlspace-with-lightline/
function! s:filtered_lightline_call(funcname)
  if bufname('%') == '__CS__'
    return
  endif
  execute 'call lightline#' . a:funcname . '()'
endfunction

augroup LightLine
  autocmd!
  autocmd WinEnter,BufWinEnter,FileType,ColorScheme * call s:filtered_lightline_call('update')
  autocmd ColorScheme,SessionLoadPost * call s:filtered_lightline_call('highlight')
  autocmd CursorMoved,BufUnload * call s:filtered_lightline_call('update_once')
augroup END

"}}}

"vim-fugitive
"{{{

if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif

"}}}

"vim-notes (DISABLED)
"{{{

"let g:notes_directories = ['~/Dropbox/.vim.notes']

"}}}

"vim-session
"{{{

let g:session_autosave = 'no'

"}}}

"vim-bookmarks
"{{{

let g:bookmark_no_default_key_mappings = 1

"}}}

"localvimrc
"{{{

let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0

"}}}

"vim-togglelist
"{{{

let g:toggle_list_no_mappings = 1

"}}}

"operator-flashy
"{{{

" Need this for Base16 colours
"let g:operator#flashy#group = 'Base16Flashy'

"}}}

"vim-clang-format
"{{{

let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "BreakBeforeBraces" : "Allman",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true",
            \ "Standard" : "C++11"}

"}}}

"indentLine
"{{{

let g:indentLine_enabled = 1
let g:indentLine_setConceal = 0

"}}}

"GoYo / Limelight
"{{{

let g:goyo_width=100

function! s:goyo_enter()
  " Disable tmux to get a clean window
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z

  " No vim info either
  set noshowmode
  set noshowcmd
  set scrolloff=999

  " Also enable Limelight
  "Limelight

  " For some reason I have to disable lightline manually
  call lightline#disable()
endfunction

function! s:goyo_leave()
  " Enable tmux again
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z

  " Re-enable vim info
  set showmode
  set showcmd
  set scrolloff=5

  " Re-compute the CtrlSpace tabline
  set tabline=%!ctrlspace#api#Tabline()

  " Turn off Limelight
  "Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"}}}

"vim-markdown
"{{{
let g:vim_markdown_no_default_key_mappings = 1
"}}}

" SimplyFold
" {{{
let g:SimpylFold_docstring_preview = 1
" }}}
