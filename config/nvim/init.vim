source ~/.cnc/config/nvim/plugins.vim

"""""""" GENERAL
""""""""""""""""
let mapleader="\<SPACE>"

set encoding=utf8 							
set nomodeline								
set nowrap								
set undolevels=100							
set clipboard=unnamed							
set conceallevel=1							
set noerrorbells				
set number relativenumber							
set hlsearch								
set backspace=indent,eol,start      					
set showcmd								
set nocompatible
set cursorline
set noautoindent
set nocindent
set lazyredraw
set laststatus=2
syntax on
syntax enable
autocmd FileType markdown setlocal wrap					

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
set smarttab

" set relative line numbers only when in normal focused mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" automatically enter insert mode when a terminal buffer is selected
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" set arrow keys to resize panes
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" key rebinds
inoremap jk <ESC>
nnoremap <silent> <leader><leader>f :FZF<cr>
" exit terminal insert mode
tnoremap et <C-\><C-n>


