" ######## Mappings

" ----general mappings
map <F7> :setlocal spell! spell?<CR>
nnoremap \ :echo &mod<CR>

" mappings for syntastic error navigation
" nmap <silent>[ :lprev<cr>    " previous syntastic error
" nmap <silent>] :lnext<cr>    " next syntastic error

" mappings for neomake error navigation
nnoremap <silent>] :lprev<cr>
nnoremap <silent>[ :call LocationNext()<cr>

" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi

" go to first non space character
nnoremap H ^

" Navigate between display lines
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End>  <C-o>g<End>

" to create new line without entering insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

" folding related mappings
nnoremap zr zR
nnoremap zs zr

" mappings for page up/down, half/full
nnoremap <C-h> <C-u>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-b>
nnoremap <C-l> <C-f>

" mappings for switching buffers
nnoremap gb :bn<cr>
nnoremap gv :bp<cr>

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

" toggle between terminal and vim mouse
map  <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call ShowMouseMode()<CR>
imap <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call ShowMouseMode()<CR>

" mapping for skybison's command mode
nnoremap ; :<c-u>call SkyBison("")<cr>

" make filepath autocomplete mapping let painful
inoremap <c-f> <c-x><c-f>

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" ----Leader key mappings
nnoremap <leader>a  ggVG
nnoremap <leader>b  :buffers<CR>:buffer<Space>
map      <leader>c  :TComment<cr>
nnoremap <leader>d  :bd<CR>
" nnoremap <leader>e  :SyntasticToggleMode<CR>
nnoremap <leader>e  :Neomake<CR>
nnoremap <leader>f  :Autoformat<CR>

" specific to git fugitive
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gg :diffget
nnoremap <leader>gi :Git add -p %<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gn ]c
nnoremap <leader>gp [c
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gt :GitGutterToggle<CR>
nnoremap <leader>gv :Gvsplit<CR>
nnoremap <leader>gw :Gwrite<CR>

nnoremap <leader>i  gg=G''
nnoremap <leader>l  :IndentGuidesToggle<CR>
nnoremap <leader>m  :source $MYVIMRC<CR>
nnoremap <leader>n  :NERDTreeToggle<CR>
" leader p is mapped to ctrlp
nnoremap <leader>q  :q<CR>
nnoremap <leader>r  :NERDTreeFind<CR>
vnoremap <leader>t  :Tabularize/ /l0<cr>
nnoremap <leader>tr :TernRefs<CR>
nnoremap <leader>tn :TernRename<CR>
nnoremap <leader>tw :%s/\s\+$//e<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>w <c-w>w
nnoremap <leader>y :YRShow<CR>

nnoremap <leader>o  :OverCommandLine<CR>
nnoremap <leader><leader> :update<CR>
