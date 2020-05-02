call plug#begin('$HOME/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'andrewcgreen/vim-monokai'
Plug 'derekwyatt/vim-scala'
Plug 'hdima/python-syntax'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
call plug#end()

set updatetime=100

set spelllang=en_us
set spell

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


" netrw or vex or sex

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
