syntax enable

set t_Co=256
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set wildmenu
set colorcolumn=80
set autoindent
set smartindent
set nowrap
set mouse=a
set pastetoggle=<F3>

" Allow local overrides
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
