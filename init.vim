"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
"=====================================================
"" Vundle settings
"=====================================================
filetype off
set rtp+=$vundle
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf'

    "-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'natebosch/vim-lsc'
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'christoomey/vim-tmux-navigator'     " tmux spit navigation
    Plugin 'neoclide/coc.nvim'


    "-------------------=== colorscheme ===-------------------------------

    Plugin 'morhetz/gruvbox'
    Plugin 'bluz71/vim-nightfly-guicolors'
    Plugin 'tomasiser/vim-code-dark'
    Plugin 'hzchirs/vim-material'

    "-------------------=== Languages support ===-------------------
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin

    "-------------------=== Python  ===-----------------------------
    Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
    Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim

    "-----------------=== vimcmdline ===--------------------------------
    Plugin 'jalvesaq/nvimcom'
    Plugin 'jalvesaq/vimcmdline'

    "-------------------=== Code nvimr  ===-----------------------------"
    Plugin 'ncm2/ncm2'
    Plugin 'screen.vim'
    Plugin 'gaalcaras/ncm-R'
    Plugin 'roxma/nvim-yarp'
    Plugin 'jalvesaq/Nvim-R'

 "-------------------=== Flutter / Dart  ===-----------------------------"
    Plugin 'dart-lang/dart-vim-plugin'
    Plugin 'thosakwe/vim-flutter'
    Plugin 'natebosch/vim-lsc-dart'


    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect


    " Vim 8 only
     if !has('nvim')
         Plug 'roxma/vim-hug-neovim-rpc'
         endif



call vundle#end()                           " required


filetype on
filetype plugin on
filetype plugin indent on
colorscheme codedark
let g:airline_theme = 'codedark'
set t_Co=256
set t_ut=
colorscheme codedark
set autoread
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/plugins/autocomplete.vim
source ~/.config/nvim/langs_config/nvimr.vim
source ~/.config/nvim/langs_config/python.vim
source ~/.config/nvim/langs_config/flutter.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/langs_config/r.vim


