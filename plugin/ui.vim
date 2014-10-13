"" - User interface settings for vim -

" Colors and styling
"{{{
let base16colorspace = 256
set t_Co=16
set background=dark "/light
colorscheme solarized

if &t_Co > 2 || has("gui_running")
  syntax on
endif

"}}}

" Settings related to text behaviour and margins
"{{{
set ruler		          " show the cursor position all the time
set showcmd		        " display incomplete commands
set number 		        " display numbered lines
set scrolloff=10    " number of lines to keep above and below cursor

set wrap              " wrap text
set linebreak         " break lines when wrapping text
set nolist
set cinoptions=N-s  " namespaces doesn't count towards indentation
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

"Changing colour of the tab-bar
"{{{
if !has("gui_running")
	hi TabLineFill term=bold cterm=bold  guibg=dark
endif
"}}}
