"Nvim-R
" Nvim-R
" To open R in terminal rather than RGui (only necessary on OS X)
" let vimrplugin_applescript = 0
" let vimrplugin_screenplugin = 0

" For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'
" instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1
" For integration of r-plugin with screen.vim
let g:vimrplugin_screenplugin = 1
" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0

" map the letter 'r' to send visually selected lines to R
let g:vimrplugin_map_r = 1

"set expandtab
set shiftwidth=4
set tabstop=4

" start R with F2 key
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection

" send line to R with space bar
nmap <Space> <Plug>RDSendLine
" see R documentation in a Vim buffer
let vimrplugin_vimpager = "no"
let g:R_tmux_title = ""
" dont replace '_' by ' <- '
let R_assign = 0
let R_in_buffer = 0
let R_source = '~/.config/nvim/langs_config/tmux_split.vim'
let R_term_cmd = 'tilix -a session-add-right -e'
let R_tmux_split=1
"let R_source = "/homes/olymp/dominik.otto/Software/tmux_split.vim"
let R_applescript = 0
 let R_notmuxconf = 1
" Rmd syntax highligh
let rmd_syn_hl_chunk = 1
" vimdiff colors
let g:DiffColors=100
" R syntax check by syntastic plugin
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_r_lintr_linters = "with_defaults(assignment_linter = NULL, absolute_paths_linter = NULL, camel_case_linter = NULL, multiple_dots_linter = NULL, object_usage_linter)"
 " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
    " found' messages
    set shortmess+=c


    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " Use <TAB> to select the popup menu:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    " wrap existing omnifunc
    " Note that omnifunc does not run in background and may probably block the
    " editor. If you don't want to be blocked by omnifunc too often, you could
    " add 180ms delay before the omni wrapper:
    "  'on_complete': ['ncm2#on_complete#delay', 180,
    "               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
    au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'css',
            \ 'priority': 9,
            \ 'subscope_enable': 1,
            \ 'scope': ['css','scss'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            \ })


