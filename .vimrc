"============================== PLUGINS =============================="
call plug#begin('~/.vim/plugged')

  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  Plug 'Valloric/YouCompleteMe'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-commentary'
  Plug 'othree/html5.vim'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'mxw/vim-jsx'
  Plug 'lambdatoast/elm.vim'

call plug#end()

"nerdtree
  nnoremap <C-n> :NERDTreeToggle<Enter>
  let NERDTreeMinimalUI = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeShowHidden = 1

"ctrlp
  let g:ctrlp_show_hidden = 1
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|build|dist)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \ }

"airline
  let g:airline_theme = 'base16'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_section_y = ''
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  set laststatus=2

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
    let g:neomake_jsx_enabled_makers = ['eslint']
  else
    let g:neomake_jsx_semistandard_maker = { 'errorformat': '%W  %f:%l:%c: %m' }
    let g:neomake_javascript_enabled_makers = ['semistandard']
    let g:neomake_jsx_enabled_makers = ['semistandard']
  endif
  " stylelint
  if findfile('.stylelintrc', '.;') !=# ''
    let g:neomake_css_stylelint_exe = $PWD . '/node_modules/.bin/stylelint'
    let g:neomake_css_enabled_makers = ['stylelint']
  endif

"YouCompleteMe
  let g:python_host_prog = '/usr/local/bin/python'
  let g:ycm_add_preview_to_completeopt = 0
  set completeopt-=preview
  let g:ycm_semantic_triggers = {
    \ 'css,scss,less' : ['re!\w*']
  \ }

"better-whitespace
  autocmd! BufWritePre * StripWhitespace

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

"editorconfig-vim
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"the_silver_searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  " bind \ (backward slash) to grep shortcut
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif

"============================== GENERAL =============================="

"automatic reloading of .vimrc
  autocmd! BufWritePost .vimrc so % | AirlineRefresh

"colorscheme
  set background=dark
  let g:onedark_termcolors=16
  colorscheme onedark

"settings
  let mapleader="\<Space>"
  syntax enable
  set spelllang=en
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set number
  " set relativenumber
  set nocursorline
  set noshowcmd
  set noshowmode
  set nolazyredraw
  set ttyfast
  set mouse=a
  set scrolloff=20
  filetype plugin indent on
  inoremap kj <Esc>
  nnoremap <Leader>w :w<Enter>

"enter key
  nnoremap <Enter> G
  xnoremap <Enter> G
  autocmd! BufReadPost quickfix nnoremap <buffer> <Enter> <Enter>

"stay vmode on indent
  vnoremap < <gv
  vnoremap > >gv

"vmode clipboard copy
  vnoremap y ygv:w !pbcopy<Enter><Enter>

"swap files
  set nobackup
  set noswapfile

"code indenting
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set shiftround
  set smartindent
  set listchars=tab:»\ ,trail:-,nbsp:+
  nnoremap <Leader>t :set list!<Enter>

"search settings
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch

"remap navigation
  map <C-k> 10k
  map <C-j> 10j

"buffer
  set hidden
  nnoremap <Leader>k :bnext<Enter>
  nnoremap <Leader>j :bprevious<Enter>
  nnoremap <Leader>q :bd<Enter>
  au FocusGained,BufEnter * :silent! !
  "au FocusLost,BufLeave * :silent! w
