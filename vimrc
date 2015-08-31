" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Get plugins using Plug
call plug#begin("~/.vim/plugged")

" General plugins
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wikitopian/hardmode'

" Additional functionality
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'freitass/todo.txt-vim'
Plug 'SirVer/ultisnips'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tpope/vim-fugitive', { 'on': ['Gstatus', 'Gdiff'] }
Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes'
Plug 'aperezdc/vim-template', { 'on': 'Template' }

" Related to the look
Plug 'guns/xterm-color-table.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

" For C++
Plug 'ervandew/supertab' | Plug 'Valloric/YouCompleteMe', { 'for': 'cpp', 'do': './install.sh --clang-completer --system-libclang' }
Plug 'drmikehenry/vim-headerguard', {'for': ['cpp', 'hpp'] }
Plug 'majutsushi/tagbar', {'for': 'cpp'}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'hpp'] }

" For LaTeX
Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
Plug 'Irubataru/latex-greek-letters', { 'for': 'tex' }

" For JavaScript
Plug 'marijnh/tern_for_vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'Olical/vim-syntax-expand', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }

" For Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }  | Plug 'nelstrom/vim-markdown-folding', { 'for': 'markdown' }

call plug#end()
