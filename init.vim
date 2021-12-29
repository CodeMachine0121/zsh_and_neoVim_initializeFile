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
" themes
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'EdenEast/nightfox.nvim'
Plug 'rafi/awesome-vim-colorschemes'

"auto pair
Plug 'jiangmiao/auto-pairs'
" folder manage
Plug 'scrooloose/nerdtree'

" command
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox' # themes

" tab 選擇
"Plug 'majutsushi/tagbar'
Plug 'preservim/tagbar'

"彩色括弧
Plug 'frazrepo/vim-rainbow'


" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tabnine
Plug 'https://github.com/neoclide/coc-tabnine'

Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal

" Dveloper icons
Plug 'ryanoasis/vim-devicons'

" solidity syntax
Plug 'tomlion/vim-solidity'

" jscript
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" go language
Plug 'https://github.com/fatih/vim-go'
" syntax check
Plug 'w0rp/ale' 

call plug#end()



colorscheme gruvbox
set backfground=dark

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerlien_fonts=1

if exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



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
nnoremap <C-f> :NERDTreeFocus<CR>
" 總管重新整理
nmap <Leader>r :NERDTreeRefreshRoot <CR>


" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>[ :bp<CR>
nmap <leader>] :bn<CR>
nmap <C-q> :bd <CR>



" tagbar
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'
nmap <F8> :TagbarToggle<CR>

" vim-rainbow
let g:rainbow_active = 1

"tabnine
:set completeopt-=preview

" Terminal
nmap <C-b> :TerminalSplit bash<CR>

" syntax check
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_linters = {
      \ 'go': ['golint', 'go vet', 'go build'],
      \ }
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

