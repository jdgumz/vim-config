"my config

"thanks to Daniel Miessler for some basic settings suggestions
"https://danielmiessler.com/study/vim/#references

"thanks to Steve Losh's guide for more helpful settings: 
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/

filetype off

"ooh, very pretty!
syntax on
set encoding=utf-8
set background=dark

"no need for vi compatibility
set nocompatible

"vundle support
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

"tab settings"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"make space the leader key
let mapleader = "\<Space>"


"many of these are simple quality of use improvements,
"such as hiding files instead of closing them when new ones are opened
"(hidden), presenting file and vim info (wildmenu, laststatus, showmode, showcmd),
"flashing the screen instead of beeping when there's an error (visualbell),
"providing column info (ruler) and changing line numbers to be relative
"(relativenumber)
set scrolloff=5
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set relativenumber

"searching and moving configs
"remaps to make regex search faster
nnoremap / /\v
vnoremap / /\v

"if the search is *all* lower-case, be case insensitive; else, be case sensitive
set ignorecase
set smartcase

"places a /g at the end of a search and replace
"e.g., '/something' and then ':%s//something_else/g'
set gdefault

"incremental searching with highlighting
set incsearch
set showmatch
set hlsearch

"convenient remappings for searching
nnoremap <leader>s :noh<cr>
nnoremap <tab> %

"handle long lines
set wrap
set textwidth=79
set formatoptions=qnrn1
set colorcolumn=90
highlight ColorColumn ctermbg=12

"learn vim movement the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"allow for slightly smarter movement between lines
nnoremap j gj
nnoremap k gk
"these two re-center the screen on the cursor
"very useful for skipping to relative lines that are at the edges or
"are not on the screen
nnoremap zj gjzz
nnoremap zk gkzz

"quickly add text to the end of a line
nnoremap <shift>a <shift>$a

"python specific settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

