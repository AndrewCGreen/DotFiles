call plug#begin('$HOME/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'andrewcgreen/vim-monokai'
Plug 'derekwyatt/vim-scala'
Plug 'hdima/python-syntax'
Plug 'tpope/vim-fugitive'
call plug#end()

set updatetime=100

" lightline configs
set laststatus=2
let g:lightline= { 'colorscheme':'seoul256',}
set noshowmode

" automatically updates the open vim files
set autoread

" adds number line
set number
set numberwidth=3

" using the ctrl + o key to toggle NERDTree
map <C-o> :NERDTreeToggle<CR>

" configuration for gitgutter
let g:gitgutter_max_signs = 50

" configure backspace
set backspace=2

syntax on
colorscheme monokai

" python configs
set termguicolors
set autoindent
set showmatch
set expandtab
set ts=4
syntax enable

" set width of nerdtree
let g:NERDTreeWinSize=50


