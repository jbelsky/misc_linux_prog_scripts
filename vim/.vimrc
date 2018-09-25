set background=dark
set number
set backspace=2
syntax on

set list
set listchars=tab:>-
set tabstop=4
set shiftwidth=4

"It seems this is needed to force cygwin to use this 
"tab-configuration for .py files
function PyTabsCfg()
	set noexpandtab
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
endfunction

au BufRead,BufNewFile *.py call PyTabsCfg()
