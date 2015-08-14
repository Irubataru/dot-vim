"" - User interface settings for vim -

" Colors and styling
"{{{
let base16colorspace = 256
set t_Co=16
set background=dark "/light
colorscheme solarized
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
