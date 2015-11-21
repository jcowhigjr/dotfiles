map <Leader>r :checktime<CR>:wall<CR>:redraw!<CR>

" Buffer navigation
map <Leader>, <C-^>
map <silent><Leader>q :Bclose<CR>

noremap <leader>i :set list!<CR>
nmap <leader>ss :source $HOME/.vimrc<CR>

" Window Navigation
" Use ctrl+(h|j|k|j) to move through open windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Clear search
map <silent><Leader>/ :nohls<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>

" Ack with <leader>f
map <Leader>f :Ack!<Space>

" Highlight word at cursor without changing position
nnoremap <leader>h *<C-O>
" Highlight word at cursor and then Ack it.
nnoremap <leader>H *<C-O>:AckFromSearch!<CR>

map <Leader>F :AckFromSearch<CR>

" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without yanking
nmap <silent> <leader>d "_d
vmap <silent> <leader>d "_d

" Disable cursor keys
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <M-Down> <Nop>
inoremap <M-Left> <Nop>
inoremap <M-Right> <Nop>
noremap <Up> <Esc>
noremap <Down> <Esc>
noremap <Left> <Esc>
noremap <Right> <Esc>
vmap <Up> <Esc><Esc>gv
vmap <Down> <Esc><Esc>gv
vmap <Left> <Esc><Esc>gv
vmap <Right> <Esc><Esc>gv

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" I never intentionally lookup keywords (with `man`)
nmap K <Esc>

" I don't like <c-r>
map U :redo<CR>

map <leader>L :PromoteToLet<cr>

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Search for selected text, forwards or backwards.
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" select all
map <Leader>a ggVG

" Toggle word wrap
map <Leader>W :set wrap!<CR>

" Toggle spell checking
map <Leader>S :set spell!<CR>

" Movement & wrapped long lines
" This solves the problem that pressing down jumps your cursor 'over' the
" current line to the next line
nnoremap j gj
nnoremap k gk

nnoremap = v=
