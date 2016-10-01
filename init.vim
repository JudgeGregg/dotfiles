" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'therubymug/vim-pyte'
call plug#end()

" VISUAL
set termguicolors
set relativenumber
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

" SHORTKEYS
let mapleader=','
let g:UltiSnipsExpandTrigger = '<C-Space>'
let g:ctrlp_user_command="ag %s -l -g ''"
let g:ctrlp_use_caching = 0
let NERDSpaceDelims = 1
nnoremap <leader>a <Esc>:Ag<CR>
nnoremap <leader>t <Esc>:TagbarToggle<CR>
nnoremap <leader>z <Esc>:te<CR>
nnoremap <leader>r <Esc>:redraw!<CR>
nnoremap <leader>gs <Esc>:Gstatus<CR>
nnoremap <leader>gr <Esc>:Gread<CR>
nnoremap <leader>gw <Esc>:Gwrite<CR>
nnoremap <leader>gd <Esc>:Gdiff<CR>
nnoremap <leader>gv <Esc>:Gvdiff<CR>
nnoremap <leader>gl <Esc>:Glog<CR>
nnoremap <leader>gg <Esc>:silent Git log --oneline --graph --decorate<CR>
nnoremap <leader>gc <Esc>:Gcommit<CR>
nnoremap <leader>e <Esc>:Errors<CR>
nnoremap <leader>l <Esc>:set list!<CR>
nnoremap <leader>jd <Esc>:YcmCompleter GoTo<CR>
nnoremap <Space> gt
nnoremap <C-@> gT
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
