"" General settings

"Standard settings
"{{{

"set wildmode=longest,list,full " bash-like filename autocompletion
set backupdir=~/.tmp
set relativenumber " Relative line numbering per default

"make it so vimdiff splits vertically every time
set diffopt=filler,vertical

"Command line file completion
set wildmode=longest,list,full " bash-like filename autocompletion
set wildmenu                   " zsh-like filename list chooser

" Dont move with the arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Files in general shouldn't start folded, can fix individual files with autocmd
"set foldlevelstart=99

" Make it so I can switch buffers even if they have changed
set hidden

let g:tex_flavor="latex"

" Remove line numbering in new terminals
" https://github.com/neovim/neovim/issues/4455
if has("nvim")
  autocmd TermOpen term://* set nonumber
  autocmd TermOpen term://* set norelativenumber
endif

"}}}

" Backup if necessary
"{{{
if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif

"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview
"}}}
