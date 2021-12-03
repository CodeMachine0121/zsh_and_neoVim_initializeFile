syntax on
set encoding=utf-8
set number
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set fileformat=unix

" set hightligh current line
set t_Co=256
set cursorline
hi cursorline cterm=underline ctermbg=DarkMagenta ctermfg=Magenta
set cursorcolumn

set numberwidth=4
set smartindent
set mouse=a


call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
"auto pair
Plug 'jiangmiao/auto-pairs'
" folder manage
Plug 'scrooloose/nerdtree'

" command
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tab 選擇
Plug 'majutsushi/tagbar'

"彩色括弧
Plug 'frazrepo/vim-rainbow'


" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Tabnine
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

call plug#end()


colorscheme gruvbox-material

let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif
" 打色馬就顯示顏色
lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap<F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>[ :bp<CR>
nmap <leader>] :bn<CR>
nmap <C-q> :bd <CR>



" tagbar
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'

" vim-rainbow
let g:rainbow_active = 1

"tabnine
let g:tabnine = v:true
