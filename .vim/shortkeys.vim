"Toggle NERDTree
map <F9> <Esc>:NERDTreeToggle<CR>
"Toggle Tag list
map <F8> <Esc>:TagbarToggle<CR>
"Find function definition
map <leader>p <Esc>:!ipython<CR>
"Open zsh shell
map <leader>z <Esc>:!zsh<CR>
"Task List
map <leader>l <Plug>TaskList
"Toggle GundoHistory
map <leader>u <Esc>:GundoToggle<CR>
"Search with Ack
map <leader>a <Esc>:Ack 
" Show Git status
map <leader>gs <Esc>:Gstatus<CR>
" Show Git diff
map <leader>gd <Esc>:Gdiff<CR>
" Show Git log
map <leader>gl <Esc>:Glog<CR>
" Show Git commit
map <leader>gc <Esc>:Gcommit<CR>
" Open Errors windows
map <leader>e <Esc>:Errors<CR>
" Go to next tab
nnoremap <leader><Tab> <Esc>:tabnext<CR>
" Go to previous tab
nnoremap <S-Tab> <Esc>:tabprevious<CR>
" Viewports shortkeys
map <C-h> <Esc>:wincmd h<CR>
map <C-j> <Esc>:wincmd j<CR>
map <C-k> <Esc>:wincmd k<CR>
map <C-l> <Esc>:wincmd l<CR>
" Openerp shortkeys
abbreviate spg self.pool.get
noremap <leader>oc <Esc>:python oerpConnect(
noremap <leader>or <Esc>:python oerpRead(
noremap <leader>ogf <Esc>:python oerpGetFields(
noremap <leader>ogv <Esc>:python oerpGetView(
noremap <leader>om <Esc>:python oerpCallMethod(

