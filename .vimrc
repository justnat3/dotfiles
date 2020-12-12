call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'arakashic/chromatica.nvim'
Plug 'junegunn/fzf'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete-lsp', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/deoplete.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
call plug#end()

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletetionType = "<c-n>"
let g:chromatica#enable_at_startup=1
let g:chromatica#libclang_path='/usr/lib/llvm-7/lib'
syntax enable
set rnu nu
lua require'nvim_lsp'.ccls.setup{}
