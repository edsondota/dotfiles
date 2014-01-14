mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle

#Instalando plugins
git clone https://github.com/kien/ctrlp.vim.git
git clone git@github.com:othree/html5.vim.git
git clone git@github.com:Townk/vim-autoclose.git
git clone git://github.com/altercation/vim-colors-solarized.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/tpope/vim-surround.git
git clone http://github.com/mattn/emmet-vim.git
