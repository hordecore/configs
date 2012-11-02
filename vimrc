runtime! debian.vim

if has("syntax")
	syntax on
endif

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
	filetype plugin indent on
endif

set showmatch           " Show matching brackets.

if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

color ron
