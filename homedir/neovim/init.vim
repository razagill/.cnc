" Vim-Plug setup 
call plug#begin()

" General
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Colorschemes
Plug 'morhetz/gruvbox'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" Source the rest of the config files
source ~/.cnc/homedir/neovim/keys.vim
source ~/.cnc/homedir/neovim/plugins.vim
source ~/.cnc/homedir/neovim/general.vim
