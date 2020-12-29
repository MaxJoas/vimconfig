"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight
set t_Co=256                                " set 256 colors
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set showmatch                               " shows matching part of bracket pairs (), [], {}
set enc=utf-8	                            " utf-8 by default
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files
set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set scrolloff=10                            " let 10 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set mouse=a                                 " enable mouse


"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results
set hlsearch


" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh highlight Excess ctermbg=DarkGrey guibg=DarkGrey
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh  match Excess /\%81v.*/
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh  set nowrap
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh  highlight colorcolumn ctermbg=lightgrey guibg=lightgrey
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh  set colorcolumn=80
    autocmd FileType *,py,rst,c,cpp,r,dart,js,ts,sh  highlight colorcolumn ctermbg=Black guibg=DarkGrey


augroup END

" set curser
set cursorline
hi CursorLine term=bold cterm=bold guibg=Blue

"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2

"=====================================================
"" AirLine settings
"=====================================================
" let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=30
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='\r'
let NERDTreeMapOpenInTab='<SPACE>'

"=====================================================
"" Riv.vim settings
"=====================================================
let g:riv_disable_folding=1
au! BufNewFile,BufRead *.R,*.Rout,*.r,*.Rhistory,*.Rt,*.Rout.save,*.Rout.fail setf r
" source vimrc on write
map <leader>vimrc :tabe ~/.vim/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC
