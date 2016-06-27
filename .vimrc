"my config"

"thanks to Daniel Miessler for these basic settings suggestions
"https://danielmiessler.com/study/vim/#references

filetype off
execute pathogen#infect()

"ooh, very pretty!
syntax on
filetype plugin indent on
set encoding=utf-8

set nocompatible

set modelines=0

"tab settings"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader = "\<Space>"

"thanks to Steve Losh's guide for these helpful settings: 
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set scrolloff=3
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

nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader>s :noh<cr>
nnoremap <tab> %
nnoremap <tab> %

"handle long lines
set wrap
set textwidth=79
set formatoptions=qnrn1
set colorcolumn=85
highlight ColorColumn ctermbg=12

"show tabs and eol characters
set list
set listchars:tab:▸\ ,eol:¬

"learn vim movement the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

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

"mark bad whitespace (for Python and C)
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.c,*.h match BadWhitespace /\s\+$/
