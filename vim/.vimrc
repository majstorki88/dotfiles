""" Many thanks to Silvio Gutierrez of sgawebsites.com for many of these tips and tricks """

if has("autocmd")
 " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
  augroup END
endif

" This way we don't get an annoying warning when setting up vundle.
try
  colorscheme ir_black
catch
endtry

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

set nocompatible

" SECURITY NOTE: The VIM software has had several remote vulnerabilities
" discovered within VIM's modeline support.  It allowed remote attackers to
" execute arbitrary code as the user running VIM.  All known problems
" have been fixed, but the FreeBSD Security Team advises that VIM users
" use 'set nomodeline' in ~/.vimrc to avoid the possibility of trojaned
" text files.
set nomodeline

set shell=bash\ -l
syntax on
set number
set autoread
set backspace=2

filetype plugin indent on
" Let's us save with \w.
" \ is the default leader key.
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :tabedit! ~/.vimrc<CR>

" Clear trailing whitespace with \s and save the file.
map <leader>s :%s/\s\+$//e<CR>:w!<CR>

" Open files quickly with \o.
map <leader>o :tabedit<Space>

map <leader>t :CommandT<CR>

" Open a custom Commad-T instace with \T
map <leader>T :CommandT<Space>~/devel/

" Open a custom Commad-T instace with \T
map <leader>P :CommandT<Space>~/Sites/platform-shared/<CR>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>F :CommandT %%<cr>

" Open files verticall quickly with \v.
map <leader>v :vsplit<Space>

" Better tab functionality.
map <leader>[ :tabprev<CR>
map <leader>] :tabnext<CR>
map <leader>- :tabfirst<CR>
map <leader>= :tablast<CR>
" Toggle paste mode with \p
set pastetoggle=<leader>p

" Format json
map <leader>J :%!python -m json.tool<cr>

" Toggle line numbers with \n
nmap <leader>n :set invnumber<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
" Or maybe: autocmd BufWritePost .vimrc source %

" Ignore case while searching.
set ignorecase
set smartcase
set incsearch

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

map <space> /
map <c-space> ?

"set smartindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

set wildignore+=*.o,*.obj,.git,.hg/**,*.pyc,*.png,*.gif,*.jpg,*.jpeg
let g:CommandTMaxCachedDirectories=0
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:CommandTSelectNextMap=['<C-n>', '<C-j>', '<Down>']
let g:CommandTSelectPrevMap=['<C-p>', '<C-k>', '<Up>']

hi ColorColumn ctermbg=235
hi TabLine ctermbg=0
hi TabLineFill ctermfg=0
hi TabLineSel ctermfg=blue
hi pythonSpaceError ctermbg=0

if version >= 703
  set colorcolumn=81,82
  " set clipboard=unnamed
endif

