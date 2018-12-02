set nocompatible

filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set expandtab
set tabstop=2  shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set smarttab
set expandtab
set nu

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from
set sidescrolloff=15
set sidescroll=1

let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 2

let g:indentLine_char = '¦'
"let g:indentLine_char = '|'
let g:javascript_conceal = 1
let b:javascript_fold = 1
let g:javascript_plugin_jsdoc = 1
let g:vim_tags_auto_generate = 1
let g:vim_tags_ignore_files = ['.hgignore', '^(copy).rb', '^.orig']

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'gavocanov/vim-js-indent'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-ragtag'
Plugin 'eugen0329/vim-esearch'
Plugin 'taglist.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'klen/python-mode'
Plugin 'hwartig/vim-seeing-is-believing'
call vundle#end()

filetype plugin indent on
syntax on

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
" autocmd vimenter * NERDTree

augroup VimCSS3Syntax
  autocmd!
  "  autocmd BufWrite *.rb,*.jbuilder :RuboCop -a
  autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))

  autocmd FileType css setlocal iskeyword+=-

augroup END

" Tmux configurations

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
