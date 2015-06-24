set fileencoding=utf-8
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'xolox/vim-session'
NeoBundle 'xolox/vim-misc'
NeoBundle 'soriac/vim-highlight'
call neobundle#end()
NeoBundleCheck

" compile with <F9> or <F10>
autocmd FileType python nnoremap <buffer> <F9> :!python %<CR>
autocmd FileType ruby nnoremap <buffer> <F9> :!ruby %<CR>

" vim options
set backspace=2 autoindent smartindent
set number relativenumber
set softtabstop=8 shiftwidth=2 nowrap
set expandtab
set list listchars=tab:»\ ,trail:•

filetype plugin indent on
colors railcasts
syntax enable

" CD
cd ~/Programming

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

highlight Search ctermbg=NONE ctermfg=NONE cterm=underline
