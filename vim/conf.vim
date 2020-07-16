"example to set path
"set runtimepath^=~/Dropbox/vim
"source ~/Dropbox/vim/vimrc.vim

syntax on

set backspace=indent,eol,start
:hi CursorLine gui=underline cterm=underline
set noerrorbells
set relativenumber
filetype plugin indent on
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
:retab
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cindent
set smartindent
set autoindent
set esckeys
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

set colorcolumn=80

exe 'set t_kB=' . nr2char(27) . '[Z'
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <Esc>[Z <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap > >gv
vnoremap < <gv

"automate install of plugin manager 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'gruvbox-community/gruvbox'

Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'lyuts/vim-rtags'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug  'tpope/vim-tbone'
call plug#end()

let g:indentLine_char = '⎸'
let g:indentLine_color_term = 239
let g:indentLine_color_dark = 0
let g:gruvbox_contrast_dark = 'hard'
let g:ctrlp_use_caching = 0
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>ps :Rg<SPACE>

map <SPACE>\ :NERDTreeToggle<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
let NERDTreeCustomOpenArgs={'file': {'where': 'v', 'keepopen':1, 'stay':1}} 
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
let g:plug_window = 'noautocmd vertical topleft new'

