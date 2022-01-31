" Plugins
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    "Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    "color
    Plug 'elvessousa/sobrio'
call plug#end()


" Options
set background=dark
color sobrio
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set ttyfast
    
" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4

"Syntax
filetype plugin indent on
syntax on

"Color support
set t_Co=256

if $TERM !=? 'xterm-256color'
    set termguicolors
endif

"Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" File Browser
let NERDTreeShowHidden=1


" Language server stuff
"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
"nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
"nnoremap <F6> :sp<CR>:terminal<CR>
nnoremap <C-n> :sp<CR>:terminal<CR>

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

