set nocompatible
syntax enable

set autoindent
set colorcolumn=80
set expandtab
set mouse=a
set nowrap
set number
set pastetoggle=<F3>
set scrolloff=6
set shiftwidth=2
set showmatch
set smartindent
set softtabstop=2
set t_Co=256
set tabstop=2

" Allow local overrides
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
  source $LOCALFILE
endif
