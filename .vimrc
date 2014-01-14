map <Tab> :tabnext<CR>
map <S-Tab> :tabpreviou<CR>

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
execute pathogen#infect()
"set cursorline
"set cursorcolumn

"Solirized theme configuration
syntax enable
syntax on
set t_Co=16
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
