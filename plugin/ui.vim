"" - User interface settings for vim -

" Colors and styling
"{{{

"{{{ Solarized theme
let base16colorspace = 256
set t_Co=256
"let g:solarized_termcolors=256
set t_ut= "Fix for bg colour issues in tmux http://sunaku.github.io/vim-256color-bce.html
set background=dark
colorscheme solarized
"colorscheme twilighted
"}}}

"{{{ PaperColor theme
"set t_Co=256
"set background=light "/dark
"colorscheme PaperColor
"}}}

set conceallevel=1 "Use vims new conceal feature
"}}}

" Settings related to text behaviour and margins
"{{{
set scrolloff=10      " number of lines to keep above and below cursor
set number            " show linenumbers

set wrap              " wrap text
set linebreak         " break lines when wrapping text
set nolist
set cinoptions=N-s    " namespaces doesn't count towards indentation
set textwidth=130 
set wrapmargin=0

set formatoptions+=l
"}}}

" Tabs are defined as 2 spaces
"{{{
set tabstop=2 
set expandtab
set shiftwidth=2
"}}}

"Settings for Powerline
"{{{
set laststatus=2
set noshowmode
"}}}
