let mapleader=","

" FZF keys
nnoremap <Leader>ff :GFiles<Enter>

" Window movment keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Escape key
inoremap jk <ESC>

" Delete trailing white space on save, JS only for now
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.js,*.jsx :call DeleteTrailingWS()
