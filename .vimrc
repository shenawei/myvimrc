map R :source ~/.vimrc<CR>

map sr :set splitright<CR> :vsplit<CR>
map sl :set nosplitright<CR> :vsplit<CR>
map sb :set splitbelow<CR> :split<CR>
map su :set nosplitbelow<CR> :split<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

let mapleader= "\<space>"
map <LEADER>w <C-w>k
map <LEADER>s <C-w>j
map <LEADER>a <C-w>h
map <LEADER>d <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tb :tabe<CR>
map tl :-tabnext<CR>
map tr :+tabnext<CR>

map <LEADER>ss :set spell!<CR>

noremap <C-x> ea<C-x>s
inoremap <C-x> <ESC>ea<C-x>s

inoremap ( ()<ESC>i
inoremap { {<CR>}<ESC>O
inoremap [ []<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i


set termencoding=utf-8
set encoding=utf-8

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
 
set number

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set showcmd
set wildmenu
set autochdir
set wrap

set mouse=a
set cursorline
set scrolloff=6
set showmatch


set backspace=indent,eol,start

syntax on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'preservim/tagbar'
Plug 'Valloric/ListToggle'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"===
"=== gruvbox
"===
colorscheme gruvbox
set background=dark


"===
"=== nerdtree
"===
nnoremap tt :NERDTreeFocus<CR>


"===
"=== tagbar
"===
nmap <F8> :TagbarToggle<CR>


"===
"=== ListToggle
"===
let g:ycm_always_populate_location_list = 1
let g:lt_location_list_toggle_map = '<leader>l'


"===
"=== coc.nvim
"===
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


