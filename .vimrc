"set encoding=utf8
"set fileencodings=utf8

"set t_Co=256

set nu
set ai	"indent

set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set cindent
set backspace=indent,eol,start
set laststatus=2
set wrap
set ruler

set ignorecase      "case insensetive search


filetype indent on
syntax enable

"color configuration
set bg=dark
colorscheme desert
if &diff
	"colors blue
	colorscheme evening
endif

"special setting
"autocmd FileType make setlocal noexpandtab	"allow tab in makefile


"hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
"hi CursorLinNr ctermfg=Green ctermbg=NONE

"ctags/cscope
"set csre       "make source code path relative to cscope.out

set tags=./tags,./ctags.tags
set cscopetag
set csto=0

if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif

set cscopeverbose

"nmap zs/zg/zc/...

set nobackup
set noswapfile
set noundofile
