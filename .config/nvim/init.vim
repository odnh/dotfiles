call plug#begin('~/.local/share/nvim/plugged')

" editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'rhysd/vim-grammarous'
Plug 'ervandew/supertab'

" modes
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'scrooloose/nerdtree'

" aesthetic
Plug 'morhetz/gruvbox'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" languages
Plug 'gisraptor/vim-lilypond-integrator', { 'for': 'lilypond' }
Plug 'LnL7/vim-nix'
Plug 'cespare/vim-toml'
Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

" colours
set termguicolors
colorscheme gruvbox
set background=dark

" tabs and indent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set linebreak

" other general stuff
set relativenumber
set number

" netrw
let g:netrw_banner = -1

" NERDTree
map <C-o> :NERDTreeToggle<CR>

" vimlatex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_enabled = 1
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'arara'

" ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
autocmd FileType ocaml execute "set rtp+=" . substitute(system('opam config var share'), '\n$', '', '''') . "/ocp-indent/vim/indent/ocaml.vim"
au FileType ocaml call SuperTabSetDefaultCompletionType("<c-x><c-o>")
