"=====================================================
"" Key Mappings
"=====================================================

inoremap jj <Esc>
inoremap JJ <Esc>
inoremap jk <Esc>


" Tab navigation.
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-t>          :tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
highlight ExtraWhitespace ctermbg=red guibg=red

" delte whitespace when after writing
autocmd BufWritePre * %s/\s\+$//e
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"split navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set splitbelow
set splitright

"confirm selection
inoremap <cr> <c-y>
" tmux navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <c-h> :TmuxNavigateLeft<cr>
nnoremap <c-j> :TmuxNavigateDown<cr>
nnoremap <c-k> :TmuxNavigateUp<cr>
nnoremap <c-l> :TmuxNavigateRight<cr>

