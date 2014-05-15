" Drop compatibility with Vi, disable modelines
set nocompatible
set modelines=0

" Enable .exrc-s for custom per-project settings
set exrc
set secure

" <leader> = ","
let mapleader=","

" Enable hiding buffers
set hidden

" Default tab settings
set expandtab
set ts=4 sts=4 sw=4

" Basics
set encoding=utf-8
set showmode
set showcmd
set nowrap
set showmatch
set ignorecase
set smartcase
set gdefault
set number

" Long lines
set textwidth=0 wrapmargin=0
set colorcolumn=85

" Persistent undo
set undodir^=~/.vim/undo

" Disable F1
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" Window jumping
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffer jumping
map <leader>h :bprevious<CR>
map <leader>l :bnext<CR>

" Pin NERDTree
map <C-e> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$']

" Reasonable regexes in search
nnoremap / /\v
vnoremap / /\v

" Search highlighting
set hls
map <leader><space> :nohl<CR>

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Colorscheme
set background=dark
colorscheme molokai

" Color detection
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Relative line numbers in normal mode, standard in insert mode
:autocmd InsertEnter * :set nonumber relativenumber
:autocmd InsertLeave * :set norelativenumber number

" Command-T
let g:CommandTMatchWindowReverse=1
nnoremap <leader>E :CommandTFlush<CR>

" Ignored files
set wildignore+=.git,*.pyc,node_modules/*,build/*,dist/*

" Better indenting in visual mode
vnoremap > >gv
vnoremap < <gv

" X clipboard!
set clipboard=unnamed

" GVim settings
if has('gui_running')
    set antialias
    set guioptions+=c " Console dialogs
    set guioptions-=m " Disable main menu
    set guioptions-=T " Disable toolbar
    set guioptions-=r " Disable scrollbars
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=b
    set cursorline
endif

set guifont=Inconsolata\ for\ Powerline:h14

" Listchars
set list listchars="tab:»,trail:·,extends:⇒,precedes:⇐"

" Markdown and HTML preview via a Chrome extension
autocmd BufEnter {*.md,*.html} exe 'noremap <C-p> :!open -a "Google Chrome" %:p<CR>'

" Airline
" Nice symbols:
let g:airline_powerline_fonts = 1
" Tabline:
let g:airline#extensions#tabline#enabled = 1

" Table mode

