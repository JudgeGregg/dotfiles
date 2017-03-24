" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
"Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/ListToggle'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'

Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugins' }
Plug 'rudes/vim-java'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'
call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" VISUAL
set termguicolors
set number
set fillchars+=vert:\ 
set listchars=tab:▸\ ,eol:¬
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = ''
colorscheme bubblegum-256-dark
set noshowmode

" Python Neovim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Eclim stuff
"let g:EclimCompletionMethod = 'omnifunc'

" Ctrl-P
let g:ctrlp_user_command="ag %s -l -g ''"
let g:ctrlp_use_caching = 0

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
nnoremap <leader>e <Esc>:Errors<CR>
nnoremap <leader>y <Esc>:YcmCompleter GoTo<CR>
nnoremap <leader>js <Esc>:JavaSearchContext<CR>
nnoremap <leader>jf <Esc>:JavaFormat<CR>
nnoremap <leader>n gt
nnoremap <leader>p gT
"Weird hack for cscopes
nmap <C-Space> <Nul>
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<TAB>"
