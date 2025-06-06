unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

syntax on
filetype indent on

let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"
let &t_SR = "\e[2 q"

set autoindent
set backspace=indent,eol,start
set confirm
set encoding=UTF-8
set expandtab
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:^,extends:>,precedes:<,nbsp:~
set mouse=
set nobackup
set noloadplugins
set noshowmatch
set scrolloff=999
set shiftwidth=4
set showmode
set smartcase
set smartindent
set softtabstop=4
set whichwrap+=<,>,h,l,[,]
