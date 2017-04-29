set nocompatible
syntax on
syntax enable

set hlsearch

set number

set backspace=indent,eol,start      "Allow backspacing over everything in insert mode
set ruler														"Show the cursor position all the time
set cursorline
set showcmd													"Display incomplete commands

set tabstop=2
set softtabstop=2
set smarttab
set shiftwidth=2
set noautoindent
set nocindent
set lazyredraw
set colorcolumn=120

let mapleader=","

" Escape key
inoremap jk <ESC>

" Delete trailing white space on save, JS only for now
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.js,*.jsx :call DeleteTrailingWS()