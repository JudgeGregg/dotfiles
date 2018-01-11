" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/ListToggle'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'fatih/vim-go'
Plug 'rudes/vim-java'
Plug 'vim-ruby/vim-ruby'
Plug 'kassio/neoterm'
Plug 'mhinz/neovim-remote'
call plug#end()


" VISUAL
set termguicolors
set number
set fillchars+=vert:\ 
set listchars=tab:▸\ ,eol:¬
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
colorscheme bubblegum-256-dark
set noshowmode

let g:terminal_color_0  = '#303030'
let g:terminal_color_1  = '#d75f5f'
let g:terminal_color_2  = '#00af87'
let g:terminal_color_3  = '#afd75f'
let g:terminal_color_4  = '#5fafd7'
let g:terminal_color_5  = '#8787af'
let g:terminal_color_6  = '#00afd7'
let g:terminal_color_7  = '#ffffff'
let g:terminal_color_8  = '#a3a3a3'
let g:terminal_color_9  = '#d787af'
let g:terminal_color_10 = '#5faf5f'
let g:terminal_color_11 = '#d7af5f'
let g:terminal_color_12 = '#87afd7'
let g:terminal_color_13 = '#8787d7'
let g:terminal_color_14 = '#87afff'
let g:terminal_color_15 = '#ffffff'

"Copy the previous indentation on autoindenting
set backspace=indent,eol,start

" Python Neovim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Ctrl-P
let g:ctrlp_user_command ="ag %s -l -g ''"
let g:ctrlp_use_caching = 0

" YouCompleteMe
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Eclim
let g:EclimCompletionMethod = 'omnifunc'

" SHORTKEYS
let g:UltiSnipsExpandTrigger = '<C-Space>'
map <Space> <leader>
nnoremap <leader>a <Esc>:Ag<CR>
nnoremap <leader>t <Esc>:TagbarToggle<CR>
nnoremap <leader>gs <Esc>:Gstatus<CR>
nnoremap <leader>gr <Esc>:Gread<CR>
nnoremap <leader>gw <Esc>:Gwrite<CR>
nnoremap <leader>gd <Esc>:Gdiff<CR>
nnoremap <leader>gv <Esc>:Gvdiff<CR>
nnoremap <leader>gl <Esc>:Glog<CR>
nnoremap <leader>gg <Esc>:silent Git log --oneline --graph --decorate<CR>
nnoremap <leader>gc <Esc>:Gcommit<CR>
nnoremap <M-l> gt
nnoremap <M-h> gT
nnoremap <leader>L <Esc>:set list!<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <leader>jI <Esc>:JavaImport<CR>
nnoremap <leader>jS <Esc>:JavaSearch<CR>
nnoremap <leader>jC <Esc>:JavaSearchContext<CR>
nnoremap <leader>jH <Esc>:JavaHierarchy<CR>
nnoremap <leader>jE <Esc>:JavaCallHierarchy<CR>
nnoremap <leader>jF <Esc>:%JavaFormat<CR>

nnoremap <leader>s <Esc>:Ttoggle<CR>
nnoremap <leader>S <Esc>:Tnew<CR>
nnoremap <leader>T <Esc>:tab split<CR>
