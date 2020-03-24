" ======== coc
" ============

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" make <cr> select the first completion item and confirm the completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" ======== fzf
" ============
nnoremap <leader>p :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>se :Rg<CR>
nnoremap <leader>su :Rg <C-R><C-W><CR>

" ======== nerdtree
" =================
map <C-n> :NERDTreeToggle<CR>
map <C-N> :NERDTreeFind<CR>
let NERDTreeShowHidden=1 " always show hidden (dot) files
let NERDTreeQuitOnOpen=1 " close NERDTree once a file is opened
let NERDTreeMinimalUI=1  " hides the help text

" ======== vim-sneak
" ==================
let g:sneak#label = 1

" ======== nerdcommenter
" ======================
let g:NERDCompactSexyComs = 1

" ======== lightline
" ==================
let g:lightline = {
  \ 'colorscheme': 'srcery',
  \ 'active': {
  \   'right': [ [ 'lineinfo' ],
  \              [ 'fileformat', 'fileencoding', 'filetype', 'gitbranch' ] ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" ======== srcery
" ===============
let g:srcery_transparent_background = 1

" ======== vimwiki
" ================
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
:map <leader>tt <Plug>VimwikiToggleListItem
:map <leader>tr <Plug>VimwikiRemoveSingleCB

