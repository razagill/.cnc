source ~/.cnc/config/nvim/plugins.vim

"""""""" GENERAL
""""""""""""""""
" search down into sub folders
"set path+=**
" display all matching files when we tab complete
"set wildmenu
" set standard file enconding
set encoding=utf8 							
" no special per file vim overrride configs
set nomodeline								
" stop word wrapping
set nowrap								
" except on markdown
autocmd FileType markdown setlocal wrap					
" adjust system undo levels
set undolevels=100							
" use system clipboard
set clipboard=unnamed							
" don't let vim hide characters
set conceallevel=1							
" no loud bells
set noerrorbells				
" set number gutter
set number							
" set search highlighting
set hlsearch								
" allow backspacing over everything in insert mode
set backspace=indent,eol,start      					
" display incomplete commands
set showcmd								
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
nnoremap <silent> <leader><leader>f :FZF<cr>

" delete trailing white space on save, JS only for now
"func! DeleteTrailingWS()
"  exe "normal mz"
"  %s/\s\+$//ge
"  exe "normal `z"
"endfunc
"autocmd BufWrite *.js,*.jsx :call DeleteTrailingWS()

"let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=1
set laststatus=2

"nnoremap <Leader>p :CtrlP<CR>
"nnoremap <Leader>t :CtrlP<CR>

"nnoremap <Leader>fp :Grepper<Space>-query<Space>
"nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

"map ` :VimFiler -explorer<CR>
"map ~ :VimFilerCurrentDir -explorer -find<CR>
