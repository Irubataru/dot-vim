" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin on

" Get plugins using Plug
call plug#begin("~/.vim/extensions")

Plug 'semanser/vim-outdated-plugins', { 'for': [] }

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
Plug 'junegunn/fzf', {'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | 
      \ Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'MattesGroeger/vim-bookmarks'
Plug 'milkypostman/vim-togglelist'
Plug 'vim-ctrlspace/vim-ctrlspace'

" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" Additional functionality
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'freitass/todo.txt-vim'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
Plug 'aperezdc/vim-template', { 'on': 'Template' }
Plug 'embear/vim-localvimrc'
Plug 'vim-scripts/TaskList.vim'
Plug 'itchyny/vim-cursorword', { 'on': [] }
Plug 'junegunn/vim-easy-align'

" Note taking
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
"Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes' " Disabled due to conflict with coc

" git related
Plug 'tpope/vim-fugitive'  " The best git plugin
Plug 'airblade/vim-rooter' " Changes the vim directory to project root

" Colour schemes
Plug 'junegunn/seoul256.vim'
Plug 'Irubataru/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'trevordmiller/nova-vim'

" Related to the look
Plug 'guns/xterm-color-table.vim'
Plug 'itchyny/lightline.vim'
Plug 'haya14busa/vim-operator-flashy' | 
      \ Plug 'kana/vim-operator-user'
Plug 'Yggdroot/indentLine', {'for': ['python']}
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-startify'

" For C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp'] }
Plug 'rdnetto/YCM-Generator', { 'for': 'cpp', 'branch': 'stable'}
Plug 'drmikehenry/vim-headerguard', {'for': ['cpp', 'hpp'] }
Plug 'majutsushi/tagbar', {'for': 'cpp'}
Plug 'rhysd/vim-clang-format', { 'for': ['cpp', 'hpp', 'c'] } |
      \ Plug 'kana/vim-operator-user'
Plug 'vim-syntastic/syntastic', { 'for': [''] }

" For python
Plug 'Chiel92/vim-autoformat', { 'for': ['python', 'tex', 'html', 'css', 'javascript'] }
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }

" For Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }

" For LaTeX
Plug 'lervag/vimtex', { 'for': 'tex' }

" For JavaScript
Plug 'marijnh/tern_for_vim', { 'for': [], 'do': 'npm install' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'Olical/vim-syntax-expand', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }

" For Markdown
Plug 'SidOfc/mkdx', { 'for': 'markdown' }

" Other syntax highlighting
Plug 'lazywei/vim-matlab'
Plug 'rsmenon/vim-mathematica'
Plug 'vim-scripts/gnuplot.vim'

" Other filetype specific plugins
Plug 'google/vim-ft-bzl'
Plug 'vifm/vifm', { 'rtp': 'data/vim' }

" nvim dependent plugins
if has('nvim')
  Plug 'mhinz/vim-signify'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'jalvesaq/Nvim-R'
endif

call plug#end()
