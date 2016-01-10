"automatic reloading of .vimrc
  autocmd! bufwritepost .vimrc so % | AirlineRefresh

"colorscheme
  set background=dark
  let base16colorspace=256
  syntax enable
  set t_Co=256
  colorscheme base16-oceanicnext

"general-settings
  let mapleader="\<Space>"
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set number
  set relativenumber
  set cursorline
  set showcmd
  set scrolloff=5
  set mouse=
  filetype plugin indent on
  nnoremap <Enter> G
  inoremap <Esc> <nop>
  inoremap lk <Esc>
  nnoremap <Leader>w :w<Enter>

"stay in vmode on indent
  vnoremap < <gv
  vnoremap > >gv

"disable swap files
  set nobackup
  set noswapfile

"code indenting
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
  set shiftround
  set smartindent

"search settings
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch

"remap navigation and disable arrow keys
  noremap ; l
  noremap l k
  noremap k j
  noremap j h
  noremap <up> <nop>
  noremap <down> <nop>
  noremap <left> <nop>
  noremap <right> <nop>

"buffer
  set hidden
  nnoremap <Leader>; :bnext<Enter>
  nnoremap <Leader>j :bprevious<Enter>
  nnoremap <Leader>q :bd<Enter>
  au FocusGained,BufEnter * :silent! !
  au FocusLost,BufLeave * :silent! w

"vim-plug
  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  Plug 'ervandew/supertab'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-commentary'
  Plug 'othree/yajs.vim', {'for': ['javascript']}
  Plug 'mxw/vim-jsx', {'for': ['javascript']}

  call plug#end()

"--nerdtree
  nnoremap <C-n> :NERDTreeToggle<Enter>
  let NERDTreeQuitOnOpen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeMinimalUI = 1

"--ctrlp
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|build)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \ }

"--airline
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  set laststatus=2

"--neomake
  let g:neomake_open_list = 2
  let g:neomake_list_height = 3
  autocmd! BufWritePost * Neomake
  let g:neomake_error_sign = {
    \ 'text': '✖>',
    \ 'texthl': 'SignifySignDelete',
  \ }
  let g:neomake_javascript_semistandard_maker = {
    \ 'errorformat': '%f:%l:%c: %m',
  \ }
  let g:neomake_jsx_semistandard_maker = {
    \ 'errorformat': '%f:%l:%c: %m',
  \ }
  let g:neomake_javascript_enabled_makers = ['semistandard']
  let g:neomake_jsx_enabled_makers = ['semistandard']

"--better-whitespace
  autocmd! BufWritePre * StripWhitespace

"--multiple-cursor
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_next_key='<C-d>'
  let g:multi_cursor_prev_key='<C-x>'
  "let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'

"--delimitMate
  let delimitMate_expand_cr = 1
  let delimitMate_expand_space = 1
