set encoding=utf-8
syntax enable
set noswapfile
call plug#begin()


Plug 'scrooloose/nerdtree'
Plug 'glepnir/lspsaga.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/syntastic' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdcommenter'

Plug 'jiangmiao/auto-pairs' 
Plug 'matze/vim-move'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'


Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'

Plug 'davidhalter/jedi-vim'
Plug 'elvessousa/sobrio'

call plug#end()

" Highlightyank 程式碼反白  (yy)
hi ighlightedyankRegion cterm=reverse gui=reverse



"搜尋

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  noremap <C-f> :Ack<Space>
else
  noremap <C-f> :echo "you need to install ack or ag first"<Enter>
endif


"檔案總管
nnoremap <silent> <C-a> :NERDTreeToggle <CR>
" 總管重新整理
nmap <Leader>r :NERDTreeRefreshRoot <CR>




" 切分頁快捷鍵
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>] :bnext<CR>
nnoremap <Leader>1 :bfirst<CR>
nnoremap <Leader>2 :bfirst<CR>:bn<CR>
nnoremap <Leader>3 :bfirst<CR>:2bn<CR>
nnoremap <Leader>4 :bfirst<CR>:3bn<CR>
nnoremap <Leader>5 :bfirst<CR>:4bn<CR>
nnoremap <Leader>6 :bfirst<CR>:5bn<CR>
nnoremap <Leader>7 :bfirst<CR>:6bn<CR>
nnoremap <Leader>8 :bfirst<CR>:7bn<CR>
nnoremap <Leader>9 :blast<CR>
nnoremap <Leader>w :bd<CR>


" 語法檢查(官方推薦)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_html_tidy_quiet_messages={"level":"warnings"}
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

" Tab 選則語法提示
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'


" 檔案總管
function Startup()
	if ''==@%
		NERDTree
	endif
endfunction
autocmd VimEnter * call Startup()

let g:NERDTreeExtensionHighlightColor={}
let NERDTreeShowHidden=1


"狀態欄位 colorscheme nord
let g:airline_theme = 'bubblegum'
let g:airline_minimalist_showmod = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1


"註解工具
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDSpaceDelims=1
  " 按下 ctrl+\ 就可以註解
map <C-_> <Leader>c<space> 

"vim 游標移動
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

"git 資訊
set updatetime=100

" 設定行數
set nu

" Tab space
set shiftwidth=4

" 喚醒配色
colorscheme sobrio
