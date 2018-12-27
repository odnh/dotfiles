call plug#begin('~/.local/share/nvim/plugged')

" editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
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
Plug 'LnL7/vim-nix'
Plug 'cespare/vim-toml'

" languages
Plug 'gisraptor/vim-lilypond-integrator', { 'for': 'lilypond' }

" Initialize plugin system
call plug#end()

" colours
colorscheme gruvbox
set background=dark

" tabs and indent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set linebreak

" other general stuff
set relativenumber
set number

" netrw
let g:netrw_banner = -1

" NERDTree
map <C-o> :NERDTreeToggle<CR>

" Terminal emulator
tnoremap <Esc> <C-\><C-n>

" vimlatex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_enabled = 1
let g:vimtex_view_method = 'skim'

" ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
autocmd FileType ocaml execute "set rtp+=" . substitute(system('opam config var share'), '\n$', '', '''') . "/ocp-indent/vim/indent/ocaml.vim"
au FileType ocaml call SuperTabSetDefaultCompletionType("<c-x><c-o>")
