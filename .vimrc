call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
call plug#end()

syntax on
set tabstop=4
set softtabstop=4
set expandtab
set number
set rnu
set showcmd
filetype indent on

colorscheme gruvbox 
set bg=dark

set noswapfile            " Do not leve any backup files
set clipboard=unnamed,unnamedplus     " Use the OS clipboard
set showmatch
set termguicolors
set splitright splitbelow

set foldmethod=syntax
set foldlevel=2

map <C-f> : NERDTreeToggle<CR>

noremap <Leader>y "+y
noremap <Leader>p "+p

autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && clear && ./%:r < ./inputf.in && rm ./%:r<CR>
