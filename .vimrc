" automatic reloading of .vimrc
  autocmd! bufwritepost .vimrc source %

" colorscheme
  set background=dark
  let base16colorspace=256
  syntax enable
  set t_Co=256
  colorscheme base16-oceanicnext

" general
  let mapleader = ","
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set relativenumber
  set cursorline

" neobundle
  if 0 | endif

  if has('vim_starting')
    if &compatible
      set nocompatible
    endif

    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))

  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'othree/yajs.vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'scrooloose/syntastic'
  "NeoBundle 'Valloric/YouCompleteMe'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'ntpeters/vim-better-whitespace'
  NeoBundle 'terryma/vim-multiple-cursors'

  call neobundle#end()
  filetype plugin indent on
  NeoBundleCheck

  " --neobundle-config
    " --nerdtree
      nnoremap <c-n> :NERDTreeToggle<Enter>
      let NERDTreeQuitOnOpen = 1
      let NERDTreeAutoDeleteBuffer = 1
      let NERDTreeMinimalUI = 1
    " --airline
      let g:airline_powerline_fonts = 1
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#tab_nr_type = 1
      set laststatus=2
    " --syntastic
      set statusline+=%#warningmsg#
      set statusline+=%{SyntasticStatuslineFlag()}
      set statusline+=%*
      let g:syntastic_auto_loc_list = 1
      let g:syntastic_loc_list_height = 5
      let g:syntastic_always_populate_loc_list = 1
      let g:syntastic_javascript_checkers = ['standard']
      let g:syntastic_javascript_standard_exec = 'semistandard'
      let g:syntastic_javascript_standard_generic = 1
    " --better-whitespace
      autocmd BufWritePre * StripWhitespace
    " --multiple-cursor
      let g:multi_cursor_use_default_mapping=0
      let g:multi_cursor_next_key='<C-d>'
      let g:multi_cursor_prev_key='<C-D>'
      let g:multi_cursor_skip_key='<C-x>'
      let g:multi_cursor_quit_key='<Esc>'

" stay in vmode on indent
  vnoremap < <gv
  vnoremap > >gv

" disable swap files
  set nobackup
  set noswapfile

" code tab settings
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set shiftround
  set expandtab

" search settings
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch

" remap navigation and disable arrow keys
  noremap ; l
  noremap l k
  noremap k j
  noremap j h
  map <up> <nop>
  map <down> <nop>
  map <left> <nop>
  map <right> <nop>

" highlight overflow text
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%80v.*/
"augroup END
