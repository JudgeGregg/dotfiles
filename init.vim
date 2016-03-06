" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
call plug#end()

" VISUAL
colorscheme mustang
set fillchars+=vert:\
set listchars=tab:▸\ ,eol:¬
let g:airline_powerline_fonts = 1

" SHORTKEYS
let mapleader=','
let g:UltiSnipsExpandTrigger = '<C-Space>'
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
nnoremap <C-j> <Esc>:wincmd j<CR>
nnoremap <C-h> <Esc>:wincmd h<CR>
nnoremap <C-k> <Esc>:wincmd k<CR>
nnoremap <C-l> <Esc>:wincmd l<CR>
