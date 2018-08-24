" Vim
highlight VertSplit cterm=NONE ctermfg=Black ctermbg=Black
highlight StatusLine cterm=NONE ctermfg=Black ctermbg=Black
highlight StatusLineNC cterm=NONE ctermfg=Black ctermbg=Black

highlight CursorLine cterm=NONE ctermbg=Black

set fillchars+=vert:\ 
set expandtab
set tabstop=2
set shiftwidth=2
set number
set hlsearch
set cursorline
set nostartofline
set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10

nnoremap <space> za

syntax on
filetype plugin indent on

autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

let mapleader=","

" Pathogen
execute pathogen#infect()

" Nerdtree
autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1

" Nerdtree commenter
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'

" Indentline
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
