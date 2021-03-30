all plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'codota/tabnine-vim'
Plug 'rust-lang/rust.vim'
Plug 'sainnhe/gruvbox-material'
call plug#end()

" to make gruvbox work
set termguicolors
let g:gruvbox_termcolors=16
colorscheme gruvbox-material
set background=dark

" Direct swp files
set directory^=$HOME/.vim/tmp.//

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set nu

" Set up extra chars
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" FZF key bindings
nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

" Syntax Highlighting for svelte and html
au BufReadPost *.svelte set syntax=html
au BufReadPost *.html set syntax=html

autocmd BufWritePre * %s/\s\+$//e
