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
  "au FocusLost,BufLeave * :silent! w

"source plugins.vim
  source $HOME/.vim/plugins.vim
