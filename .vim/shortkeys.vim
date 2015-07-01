"Toggle Tag list
map <leader>t <Esc>:TagbarToggle<CR>
"Open ipython
map <leader>p <Esc>:!python %<CR>
"Open zsh shell
map <leader>z <Esc>:sh<CR>
"Toggle GundoHistory
map <leader>u <Esc>:GundoToggle<CR>
"Search with Ack
map <leader>a <Esc>:Ack 
" Show Git status
map <leader>gs <Esc>:Gstatus<CR>
" Show Git read
map <leader>gr <Esc>:Gread<CR>
" Show Git write
map <leader>gw <Esc>:Gwrite<CR>
" Show Git diff
map <leader>gd <Esc>:Gdiff<CR>
" Show Git log
map <leader>gl <Esc>:Glog<CR>
" Show Git global log
map <leader>gg <Esc>:silent Git log --oneline --graph --decorate<CR>
" Show Git commit
map <leader>gc <Esc>:Gcommit<CR>
" Open Errors windows
map <leader>e <Esc>:Errors<CR>
" Show list
map <leader>l <Esc>:set list!<CR>
" Clear Ctrl-P cache
map <leader>c <Esc>:ClearCtrlPCache<CR>
" YouCompleteMe
map <leader>jd <Esc>:YcmCompleter GoTo<CR>
" Go to next tab
nnoremap <Space> gt
" Go to previous tab
nnoremap <C-@> gT
" Viewports shortkeys
map <C-h> <Esc>:wincmd h<CR>
map <C-j> <Esc>:wincmd j<CR>
map <C-k> <Esc>:wincmd k<CR>
map <C-l> <Esc>:wincmd l<CR>
