"============================== PLUGINS =============================="
call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  Plug 'Valloric/YouCompleteMe'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-commentary'
  Plug 'othree/html5.vim'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'gavocanov/vim-js-indent'
  Plug 'mxw/vim-jsx'
  Plug 'posva/vim-vue'

call plug#end()

"nerdtree
  nnoremap <C-n> :NERDTreeToggle<Enter>
  let NERDTreeQuitOnOpen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeMinimalUI = 1

"ctrlp
  let g:ctrlp_show_hidden = 1
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|build)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \ }

"airline
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  set laststatus=2
  let g:airline_section_y = ''
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''

"vim-easymotion
  let g:EasyMotion_do_mapping = 0
  let g:EasyMotion_smartcase = 1
  nmap s <Plug>(easymotion-s2)

"neomake
  let g:neomake_open_list = 2
  let g:neomake_list_height = 3
  autocmd! BufWritePost * Neomake
  let g:neomake_error_sign = {
    \ 'text': '✖>',
    \ 'texthl': 'SignifySignDelete',
  \ }
  " eslint or semistandard
  if findfile('.eslintrc', '.;') !=# ''
    let g:neomake_javascript_eslint_exe =  $PWD . '/node_modules/.bin/eslint'
    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_jsx_enabled_makers = ['eslint']
  else
    let g:neomake_javascript_semistandard_maker = {
      \ 'errorformat': '%f:%l:%c: %m',
    \ }
    let g:neomake_jsx_semistandard_maker = {
      \ 'errorformat': '%f:%l:%c: %m',
    \ }
    let g:neomake_javascript_enabled_makers = ['semistandard']
    let g:neomake_jsx_enabled_makers = ['semistandard']
  endif
  " stylelint
  if findfile('.stylelintrc', '.;') !=# ''
    let g:neomake_css_stylelint_maker = {
    \ 'errorformat': '%f:%l:%c: %m',
    \ 'exe': $PWD . '/node_modules/.bin/stylelint'
    \ }
    let g:neomake_css_enabled_makers = ['stylelint']
  endif

"YouCompleteMe
  let g:python_host_prog = '/usr/local/bin/python'
  let g:ycm_add_preview_to_completeopt = 0
  set completeopt-=preview
  let g:ycm_semantic_triggers = {
    \ 'css,scss' : ['re!\w*']
  \ }

"better-whitespace
  autocmd! BufWritePre * StripWhitespace

"vim-smooth-scroll
  noremap <silent> <C-l> :call smooth_scroll#up(10, 15, 1)<CR>
  noremap <silent> <C-k> :call smooth_scroll#down(10, 15, 1)<CR>

"multiple-cursor
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_next_key='<C-d>'
  let g:multi_cursor_prev_key='<C-x>'
  "let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'

"delimitMate
  let delimitMate_expand_cr = 1
  let delimitMate_expand_space = 1

"vim-jsx
  let g:jsx_ext_required = 0

"============================== GENERAL =============================="

"automatic reloading of .vimrc
  autocmd! bufwritepost .vimrc so % | AirlineRefresh

"colorscheme
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set background=dark
  colorscheme base16-oceanicnext

"settings
  let mapleader="\<Space>"
  syntax enable
  set spelllang=en
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set number
  set relativenumber
  set cursorline
  set showcmd
  set lazyredraw
  set ttyfast
  set scrolloff=5
  set mouse=
  filetype plugin indent on
  nnoremap <Enter> G
  inoremap <Esc> <nop>
  inoremap lk <Esc>
  nnoremap <Leader>w :w<Enter>

"stay vmode on indent
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

