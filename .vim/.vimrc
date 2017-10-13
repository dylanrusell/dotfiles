    " Welcome to the wonderful world of my .vimrc

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'Auto-Pairs'

Plugin 'scrooloose/nerdtree'

Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on
syntax on

" --{ end of vundle stuff }-- "

let mapleader = "\<Space>"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_haskell_checkers = ['hlint']


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set directory=$HOME/.vim/swapfiles//

set encoding=utf-8
set expandtab                     " Tabs must be spaces
set tabstop=2                     " Tabs must be 2 spaces
set shiftwidth=2
set number                        " Numbered lines
"set nowrap
set showcmd                       " CMD line persists past command
set showmatch                     " Highlight grouping matches
set ignorecase                    " ignore case when searching
set incsearch                     " Search as I type
set hlsearch                      " highlight matches
set ruler                         " show the col, line numbers
set smartindent                   " context sensitive indenting
set backspace=indent,eol,start
set scrolloff=10                  " keep 10 lines around the cursor
set fileformats=unix,dos,mac      " support all kinds of lind-endings

set textwidth=128 wrapmargin=0

set winwidth=84                   " sets the minimum width and height of a
set winheight=5                   " split
set winminheight=5                " à la Gary Bernhardt
set winheight=999

set grepprg=grep\ -nH\ $*

hi CursorLine cterm=underline ctermbg=NONE
hi Search     cterm=underline ctermbg=NONE

map <C-n> :NERDTreeToggle<CR>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nnoremap <Leader>c :set cursorline!<CR>
nnoremap <leader><leader> <c-^>
nnoremap <leader>rv :source ~/.vimrc<cr> :echo "reloaded"<cr>
nnoremap <leader>w :w<CR>
nnoremap vv V
nnoremap ; :
inoremap jj <esc>

"hex editor command
nnoremap <C-H> :%!xxd<CR>
