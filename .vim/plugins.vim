"vim-plug
  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  Plug 'Valloric/YouCompleteMe'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-commentary'
  Plug 'othree/html5.vim', {'for': ['html', 'vue']}
  Plug 'othree/yajs.vim', {'for': ['javascript.jsx', 'vue']}
  Plug 'gavocanov/vim-js-indent', {'for': ['javascript.jsx', 'vue']}
  Plug 'mxw/vim-jsx', {'for': ['javascript.jsx', 'vue']}
  Plug 'posva/vim-vue'

  call plug#end()

"--nerdtree
  nnoremap <C-n> :NERDTreeToggle<Enter>
  let NERDTreeQuitOnOpen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeMinimalUI = 1

"--ctrlp
  let g:ctrlp_show_hidden = 1
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
  let g:neomake_javascript_enabled_makers = ['semistandard']
  let g:neomake_jsx_semistandard_maker = {
    \ 'errorformat': '%f:%l:%c: %m',
  \ }
  let g:neomake_jsx_enabled_makers = ['semistandard']

"--YouCompleteMe
  let g:python_host_prog = '/usr/bin/python'
  let g:ycm_add_preview_to_completeopt = 0
  set completeopt-=preview
  let g:ycm_semantic_triggers = {
    \ 'css,scss' : ['re!\w*']
  \ }

"--better-whitespace
  autocmd! BufWritePre * StripWhitespace

"--vim-smooth-scroll
  noremap <silent> <C-l> :call smooth_scroll#up(10, 15, 1)<CR>
  noremap <silent> <C-k> :call smooth_scroll#down(10, 15, 1)<CR>

"--multiple-cursor
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_next_key='<C-d>'
  let g:multi_cursor_prev_key='<C-x>'
  "let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'

"--delimitMate
  let delimitMate_expand_cr = 1
  let delimitMate_expand_space = 1

"--vim-jsx
  let g:jsx_ext_required = 0
