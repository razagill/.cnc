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
set noshowmode
set termguicolors

colorscheme iceberg
syntax on
syntax enable
autocmd FileType markdown setlocal wrap					
hi Search ctermbg=DarkCyan
filetype plugin on

" disable mouse support
set mouse=r								

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
nmap <leader><leader>f :Files<cr>
nmap <leader><leader>b :Buffers<cr>
nmap <leader><leader>l :BLines<cr>

" coc keymapings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" lightline settings
let g:lightline = {
  \ 'colorscheme': 'iceberg',
  \ 'active': {
  \   'right': [ [ 'lineinfo' ],
  \              [ 'fileformat', 'fileencoding', 'filetype', 'gitbranch' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

" nerdcommenter settings
let g:NERDCompactSexyComs = 1
