set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'dkprice/vim-easygrep'

call vundle#end()

filetype plugin indent on

map <Tab> :tabnext<CR>
map <S-Tab> :tabpreviou<CR>

"colocar temp files do vim no /tmp
set swapfile
set dir=/tmp

"tamanho da identação
set shiftwidth=4

"identação no lugar do tab
set smarttab

"auto indentação
set autoindent

"Faz alguma coisa que Diegão não sabe
set tabstop=4

"Número nas linhas
set number

"Chartset
set encoding=utf-8
set fileencoding=utf-8

"Sintaxa highlight e busca incremental
set hlsearch
set incsearch

set expandtab
set softtabstop=4

if has("autocmd")
   filetype on
   filetype indent on
   filetype plugin on
endif
autocmd VimEnter,BufNewFile,BufReadPost *.html set ft=htmldjango
set cursorline
set cursorcolumn

"Solirized theme configuration
syntax enable
syntax on
set t_Co=16
let g:solarized_termcolors=256
set background=light
colorscheme solarized

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

