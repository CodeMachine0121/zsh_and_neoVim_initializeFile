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
Plug 'sirver/ultisnips'
" syntax check
Plug 'scrooloose/syntastic'

" 自動補齊
Plug 'VundleVim/Vundle.vim'
Plug 'Valloric/YouCompleteMe'

" tab 選擇
Plug 'majutsushi/tagbar'

" Rich python syntax highlighting
Plug 'kh3phr3n/python-syntax'

"彩色括弧
Plug 'frazrepo/vim-rainbow'

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


" Ultisnips
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader>z"
"let g:UltiSnipsJumpBackwardTrigger="<leader>x"

" syntax check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_check_python_checkers = ['pylint']

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf=''
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_identifier_candidate_char=2
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
set completeopt-=preview




" tagbar
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'

" python-syntax
let python_elf_cls_highlight = 1


" vim-rainbow
let g:rainbow_active = 1
