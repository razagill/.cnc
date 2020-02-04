set encoding=utf8 							" set standard file enconding
set nomodeline								" no special per file vim overrride configs
set nowrap								" stop word wrapping
autocmd FileType markdown setlocal wrap					" except on markdown
set undolevels=100							" adjust system undo levels
set clipboard=unnamed							" use system clipboard
set conceallevel=1							" don't let vim hide characters
set noerrorbells							" no loud bells
set number								" set number gutter
set hlsearch								" set search highlighting
set backspace=indent,eol,start      					" allow backspacing over everything in insert mode
set showcmd								" display incomplete commands

" disable mouse support
set mouse=r								
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Space above/beside cursor from screen edges
set scrolloff=1								
set sidescrolloff=5

" set tab width and convert tab to spaces
set tabstop=2	
set softtabstop=2
set shiftwidth=2
set expandtab

" set arrow keys to resize panes
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let mapleader="\<SPACE>"

set nocompatible
syntax on
syntax enable

set cursorline

set smarttab
set noautoindent
set nocindent
set lazyredraw

" rebind esacpe key
inoremap jk <ESC>

" delete trailing white space on save, JS only for now
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.js,*.jsx :call DeleteTrailingWS()
