"
"" - User interface settings for vim -
"

let base16colorspace=256
set t_Co=16

"Settings for Powerline
set laststatus=2
set noshowmode

"Solarized colour scheme
set background=dark "/light
colorscheme solarized

"Changing colour of the tab-bar
if !has("gui_running")
	hi TabLineFill term=bold cterm=bold  guibg=dark
endif
