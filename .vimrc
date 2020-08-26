"
""""""""""""""Config
"
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'
call plug#end()

"Base
colorscheme base16-default-dark
set backspace=indent,eol,start
set t_kb=^?
set t_kD=^[[3~
set guifont=Consolas:h20
set laststatus=2
set runtimepath+=$GOROOT/misc/vim
set number
filetype on
filetype plugin indent off
filetype plugin indent on

"Golang stuff?
if !has('gui_running')
	set t_Co=256
endif
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
syntax on

""Lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }
