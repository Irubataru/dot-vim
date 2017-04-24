" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin on

" Get plugins using Plug
call plug#begin("~/.vim/plugged")

" General plugins
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'wikitopian/hardmode'

if !has('nvim') 
  Plug 'tpope/vim-sensible'
endif 

" Buffer and file-management
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | 
      \ Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'MattesGroeger/vim-bookmarks'
Plug 'milkypostman/vim-togglelist'

" Additional functionality
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'freitass/todo.txt-vim'
Plug 'SirVer/ultisnips'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
Plug 'aperezdc/vim-template', { 'on': 'Template' }
Plug 'embear/vim-localvimrc'
Plug 'vim-scripts/TaskList.vim'
Plug 'itchyny/vim-cursorword', { 'for': 'cpp' }

" git related
Plug 'tpope/vim-fugitive'  " The best git plugin
Plug 'airblade/vim-rooter' " Changes the vim directory to project root

" Related to the look
Plug 'guns/xterm-color-table.vim'
Plug 'Irubataru/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'haya14busa/vim-operator-flashy' | 
      \ Plug 'kana/vim-operator-user'
Plug 'Yggdroot/indentLine',                 " Display vertical bars for each indent level
  \ {'for': ['cpp', 'javascript', 'html']}
Plug 'haya14busa/incsearch.vim'

" For C++
Plug 'ervandew/supertab' |
      \  Plug 'Valloric/YouCompleteMe', 
            \{ 'for': ['cpp', 'javascript', 'c'],
            \  'do': 'python2 install.py --clang-completer --tern-completer' }
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp'] }
Plug 'rdnetto/YCM-Generator', { 'for': 'cpp', 'branch': 'stable'}
Plug 'drmikehenry/vim-headerguard', {'for': ['cpp', 'hpp'] }
Plug 'majutsushi/tagbar', {'for': 'cpp'}
Plug 'rhysd/vim-clang-format', { 'for': ['cpp', 'hpp', 'c'] } |
      \ Plug 'kana/vim-operator-user'

" For LaTeX
Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
Plug 'Irubataru/latex-greek-letters', { 'for': 'tex' }
Plug 'kana/vim-textobj-user', { 'for': 'tex' } |
      \ Plug 'rbonvall/vim-textobj-latex', { 'for': 'tex' }

" For JavaScript
Plug 'marijnh/tern_for_vim', { 'for': [], 'do': 'npm install' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'Olical/vim-syntax-expand', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }

" For Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }  |
      \ Plug 'nelstrom/vim-markdown-folding', { 'for': 'markdown' }

" Other syntax highlighting
Plug 'vim-scripts/matlab.vim'
Plug 'rsmenon/vim-mathematica'
Plug 'vim-scripts/gnuplot.vim'

" Other filetype specific plugins
Plug 'google/vim-ft-bzl'
"Plug 'chrisbra/csv.vim', { 'for': 'csv' }

" nvim dependent plugins
if has('nvim')
  Plug 'mhinz/vim-signify'
  "Plug 'arakashic/chromatica.nvim', { 'for': ['cpp'], 'do': ':UpdateRemotePlugins' }
  "Plug 'critiqjo/lldb.nvim'
endif

call plug#end()
