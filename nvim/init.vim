so $HOME/.config/nvim/easyedit.vimrc
so $HOME/.config/nvim/RainbowParentheses.vimrc
so $HOME/.config/nvim/BufferGator.vimrc

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'rainbow_parentheses.vim'
Plug 'chriskempson/base16-vim'
Plug 'jeetsukumaran/vim-buffergator'
call plug#end()

let base16colorspace=256
colorscheme base16-google-dark

set number relativenumber
set nowrap cc=81
set background=dark
set tabstop=2 shiftwidth=2 expandtab smarttab
syntax on

au FileType perl set filetype=prolog
